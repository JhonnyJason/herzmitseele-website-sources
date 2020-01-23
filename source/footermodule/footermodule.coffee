footermodule = {name: "footermodule"}

#region modulesFromTheEnvironment
utl = null
#endregion

#region HTMLElements
upButton = null
#endregion

#region printLogFunctions
##############################################################################
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["footermodule"]?  then console.log "[footermodule]: " + arg
    return
print = (arg) -> console.log(arg)
#endregion
##############################################################################
footermodule.initialize = () ->
    log "footermodule.initialize"
    utl = allModules.vanillautilmodule
    upButton = document.getElementById("up-button")
    upButton.addEventListener("click", upButtonClicked)
    return
    
#region internalFunctions
upButtonClicked = ->
    log "upButtonClicked"
    utl.scrollTo(0)
    return
#endregion

#region exposedFunctions
#endregion

module.exports = footermodule