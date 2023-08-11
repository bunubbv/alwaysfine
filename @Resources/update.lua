function updateExecute(p, hash)
    path = SKIN:MakePathAbsolute(p)
    command = string.format('powershell -command "cd \'%s\';cd ../;cd ../;wget https://*****************************\'&\'download=1 -OutFile update.zip;$pubHash = \'%s\';$fileHash = Get-FileHash update.zip -Algorithm md5;if($fileHash.Hash -eq $pubHash){;expand-archive -Force -path \'update.zip\';RD AlwaysFine -Recurse;mv update AlwaysFine;RD update.zip -Force;}else{;exit;}"', path, hash)

    os.execute(command)
end