function updateExecute(iniOldPath, iniNewPath, luaOldPath, luaNewPath, removeDir)
    iniOld = SKIN:MakePathAbsolute(iniOldPath)
    iniNew = SKIN:MakePathAbsolute(iniNewPath)
    luaOld = SKIN:MakePathAbsolute(luaOldPath)
    luaNew = SKIN:MakePathAbsolute(luaNewPath)
    rmDir = SKIN:MakePathAbsolute(removeDir)

    command = string.format('xcopy "%s" "%s" /y && xcopy "%s" "%s" /y && rd /S /Q "%s"', iniNew, iniOld, luaNew, luaOld, rmDir)
    os.execute(command)
end