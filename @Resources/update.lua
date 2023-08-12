function updateExecute(p, hash, lo)
    path = SKIN:MakePathAbsolute(p)
    command = string.format('powershell -command "cd \'%s\';wget %s\'&\'download=1 -OutFile AlwaysFine_Update.zip;$pubHash = \'%s\';$fileHash = Get-FileHash AlwaysFine_Update.zip -Algorithm md5;if($fileHash.Hash -eq $pubHash){;expand-archive -Force -path \'AlwaysFine_Update.zip\';cd ../;cd ../;cp \'AlwaysFine/@Resources/AlwaysFine_Update\' -Destination \'AlwaysFine_Update\' -Recurse -Force;RD AlwaysFine -Recurse;mv AlwaysFine_Update AlwaysFine;}else{;exit;}"', path, lo, hash)

    os.execute(command)
end