function [energyImage, Ix, Iy] = energy_image(im, Ix_kernel, Iy_kernel)
    grayIm = rgb2gray(im);
    grayIm = double(grayIm);
    Ix = imfilter(grayIm, Ix_kernel);
    Iy = imfilter(grayIm, Iy_kernel);
    energyImage(:,:) = sqrt(Ix.^2 + Iy.^2);
end