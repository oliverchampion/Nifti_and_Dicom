function save_nii_OGC(nii,loc)
%%
% rescales data from nii.img to fit a typical nifti file value range and causes the nii.hdr to have appropriate dimensions. Normally DWI values are really low and they might be thrown into 1 or 2 bins if not rescaled appropriately. Furthermore, DWI nifti are often 4D whereas the parameter maps are typically 3D. 
%
% Code is written by Oliver Gurney-Champion
% o.j.gurney-chapion@amsterdamumc.nl
%%
size1=size(nii.img);
shapes=size(size1);

switch shapes
    case 4
        nii.hdr.dime.dim([1,2,3,4,5])=[4,size1(1),size1(2),size1(3),size1(4)];
    case 3
        nii.hdr.dime.dim([1,2,3,4])=[3,size1(1),size1(2),size1(3)];
    case 2
        nii.hdr.dime.dim([1,2,3])=[2,size1(1),size1(2)];
    otherwise
        error('number of dimensions not supported yet')
end

nii.hdr.dime.dscl_slope=max(nii.img(:))/60000;
nii.img=nii.img/nii.hdr.dime.dscl_slope;
save_untouch_nii(nii,loc);
end
