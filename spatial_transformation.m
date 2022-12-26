function out = spatial_transformation(I,transf,angle,rotate_method,bbox,crop_rect,scale,resize_method,resize_rect)

    switch(transf)
        case 'rotate'
        out = imrotate(I,angle,rotate_method,bbox);
        case 'crop'
        out = imcrop(I,crop_rect);
        case 'resize'
        out = imresize(I,resize_rect,resize_method);
    end
end