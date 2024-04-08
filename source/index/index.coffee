import Modules from "./allmodules"
import domconnect from "./indexdomconnect"
domconnect.initialize()

global.allModules = Modules


############################################################
appStartup = ->
    videoFrame.volume=0.1
    # videoFrame.addEventListener("click", toggleMuteness)
    # videoFrame.addEventListener("click", toggleMuteness)
    ## which modules shall be kickstarted?
    return

############################################################
run = ->
    promises = (m.initialize() for n,m of Modules when m.initialize?) 
    await Promise.all(promises)
    appStartup()

############################################################
run()