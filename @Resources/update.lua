function updateExecute(p, hash)
    path = SKIN:MakePathAbsolute(p)
    command = string.format('powershell -command "cd \'%s\';cd ../;wget https://***************************** -OutFile update.zip";$pubHash = \'%s\';$fileHash = Get-FileHash update.zip -Algorithm md5;if($fileHash.Hash -eq $pubHash){;expand-archive -path \'update.zip\';RD AlwaysFine -Recurse;mv update AlwaysFine -Recurse;RD update -Recurse;}else{;exit;}', path, hash)

    os.execute(command)
end