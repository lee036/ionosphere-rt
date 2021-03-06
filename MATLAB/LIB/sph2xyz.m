function [x,y,z]=sph2xyz(az,va,d)
% SPH2XYZ  Converts spherical coordinates to Cartesian
%   coordinates in a left-handed (local geodetic) system.
%   Vetorized. See also XYZ2SPH.
% Version: 7 Jul 96
% Useage:  [x,y,z]=sph2xyz(az,va,d)
% Input:  az - vector of azimuths (radians)
%         va - vector of vertical angles (radians)
%         d  - vector of distances (linear units)
% Output: x \
%         y  > cartesian coordinates (linear units)
%         z /
sinv=sin(va);
cosv=cos(va);
sina=sin(az);
cosa=cos(az);
x=d.*cosv.*cosa;
y=d.*cosv.*sina;
z=d.*sinv;
