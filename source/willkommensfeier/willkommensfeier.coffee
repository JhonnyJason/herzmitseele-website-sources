import Modules from "./allmodules"

global.allModules = Modules

############################################################
appStartup = ->
    ## which modules shall be kickstarted?
    audioElement = document.getElementById("audio-element")
    if audioElement then audioElement.volume = 0.15
    return

############################################################
run = ->
    promises = (m.initialize() for n,m of Modules when m.initialize?) 
    await Promise.all(promises)
    appStartup()

############################################################
run()