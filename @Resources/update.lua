function updateExecute(p, hash, lo)
    path = SKIN:MakePathAbsolute(p)
    command = string.format('powershell -command "cd \'%s\';wget %s\'&\'download=1 -OutFile update.zip;$pubHash = \'%s\';$fileHash = Get-FileHash update.zip -Algorithm md5;if($fileHash.Hash -eq $pubHash){;expand-archive -Force -path \'update.zip\';cd ../;cd ../;mv AlwaysFine/@Resources/update AlwaysFine -Recurse;}else{;exit;}"', path, lo, hash)

    os.execute(command)
end