function dcm2nii(folder_in,folder_out)
%%
% This program uses the MRIcron "dcm2nii" program to create nifti's. The
% first input argument is the folder in which the DCM files are pressent
% and the second input argument is the folder in which the nifti files are
% placed. The third input argument is the manme of the output file
% If no second input argument is give, files are placed in the
% original folder.
% 
% Uses the dcm2nii converter from Chris Rorden's MRIcron: Neither the name of the copyright owner nor the name of this project (MRIcron) may be used to endorse or promote products derived from this software without specific prior written permission.This software is provided by the copyright holder "as is" and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose are disclaimed. In no event shall the copyright owner be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.
% 
% Matlab code written by Oliver Gurney-Champion
% o.j.gurney-champion@amsterdamumc.nl
%
%%
if ~exist(folder_in,'dir')
    sprintf('input folder does not exist. Please check if external disk is connected')
end
    if nargin==1
        system(['dcm2nii -g Y -d N -e Y -p N -i N "' folder_in '" >NUL']);
    elseif nargin==2
        system(['dcm2nii -g Y -d N -e Y -p N -i N -o "' folder_out '" "' folder_in '" >NUL']);
    elseif nargin==0
        sprintf('give input arguments')
    else
        sprintf('too many input arguments')
    end
        
    
end