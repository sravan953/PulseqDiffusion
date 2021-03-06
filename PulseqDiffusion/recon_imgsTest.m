%% Test Example In Vivo data 12 directions, Nb 1, 20 slices
t=load('../Example_Data/kInVivo12dirs1b20slices.mat');
tmp=load('../Example_Data/ImgInVivo12dirs1b20slices.mat');
impred=tmp.im_sos;
imact=recon_imgs(t.k, t.dim_struct);  
assertValue(imact,impred)

%% Test Example In Vivo data 3 directions, Nb 3, 20 slices
t=load('../Example_Data/kInVivo3dirs3b20slices.mat');
tmp=load('../Example_Data/ImgInVivo3dirs3b20slices.mat');
impred=tmp.im_sos;
imact=recon_imgs(t.k, t.dim_struct);  
assertValue(imact,impred)

%% Test Example In Vivo data 12 directions, Nb 1, 20 slices
t=load('../Example_Data/kPhantom3dirs5b3slices.mat');
tmp=load('../Example_Data/ImgPhantom3dirs5b3slices.mat');
impred=tmp.im_sos;
imact=recon_imgs(t.k, t.dim_struct);
assertValue(imact,impred)

function assertValue(actVal,expVal)
% Helper function to assert equality
% Takes two images and compares them 

tf = isequal(actVal,expVal);
assert(tf, 'Recon images do not match!');
end