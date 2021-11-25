import Modules from "./allmodules"
import domconnect from "./indexdomconnect"

global.allModules = Modules


window.onload = ->
    domconnect.initialize()
    promises = (m.initialize() for n,m of Modules)
    await Promise.all(promises)
    appStartup()


appStartup = ->
    videoFrame.volume=0.1
    # videoFrame.addEventListener("click", toggleMuteness)
    # videoFrame.addEventListener("click", toggleMuteness)
    ## which modules shall be kickstarted?
    return
