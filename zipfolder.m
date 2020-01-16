function zipfolder(file_name,rm)
if nargin==1
system(['tar -zcvf "' file_name 'tar.gz" "' file_name '"']);
elseif nargin==2
    if rm==1
        system(['tar -zcvf "' file_name 'tar.gz" "' file_name '"']);
        system(['rm -rf "' file_name '"']);
    else
        system(['tar -zcvf "' file_name 'tar.gz" "' file_name '"']);
    end
end
end