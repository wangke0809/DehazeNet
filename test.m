path = './data/';
dehaze_path = './result/';

l = dir(path);

for i = 1 : length(l)
    l(i).name
    if l(i).name == '.'
        continue
    end
    haze = imread([path, l(i).name]);
    haze=double(haze)./255;
    tic
    dehaze=run_cnn(haze);
    toc
    imwrite(dehaze, [dehaze_path, l(i).name])
end