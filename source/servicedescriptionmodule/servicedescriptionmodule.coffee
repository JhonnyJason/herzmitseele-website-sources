servicedescriptionmodule = {name: "servicedescriptionmodule"}

#region modulesFromTheEnvironment
utl = null
#endregion

#region HTMLElements
moreInfoDownButton = null
serviceOfferListing = null
#endregion

#region printLogFunctions
##############################################################################
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["servicedescriptionmodule"]?  then console.log "[servicedescriptionmodule]: " + arg
    return
print = (arg) -> console.log(arg)
#endregion
##############################################################################
servicedescriptionmodule.initialize = () ->
    log "servicedescriptionmodule.initialize"
    utl = allModules.vanillautilmodule
    moreInfoDownButton = document.getElementById("more-info-down-button")
    serviceOfferListing = document.getElementById("serviceofferlisting")

    if moreInfoDownButton then moreInfoDownButton.addEventListener("click", moreInfoDownButtonClicked)
    return
    
#region internalFunctions

moreInfoDownButtonClicked = ->
    log "moreInfoDownButtonClicked"
    utl.scrollTo(serviceOfferListing)
    return
#endregion

#region exposedFunctions
#endregion

module.exports = servicedescriptionmodule




