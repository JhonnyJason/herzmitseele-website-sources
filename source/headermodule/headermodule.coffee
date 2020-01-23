headermodule = {name: "headermodule"}

#region modulesFromTheEnvironment
utl = null
#endregion

#region HTMLElements
menu = null
contactBlock = null
contactLink = null
#endregion

#region printLogFunctions
##############################################################################
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["headermodule"]?  then console.log "[headermodule]: " + arg
    return
print = (arg) -> console.log(arg)
#endregion
##############################################################################
headermodule.initialize = () ->
    log "headermodule.initialize"
    utl = allModules.vanillautilmodule
    menu = document.getElementById("menu")
    contactBlock = document.getElementById("contact-block")
    contactLink = document.getElementById("menu-link-kontakt")

    contactLink.addEventListener("click", kontaktClicked)

    document.addEventListener("scroll", onScroll)
    menu.addEventListener("click", menuClicked)
    return

#region internalProperties
isCollapsed = false
#endregion
    
#region internalFunctions
onScroll = ->
    log "onScroll"
    return if isCollapsed
    menu.classList.add("collapsed")
    isCollapsed = true
    return

menuClicked = ->
    log "menuClicked"
    return unless isCollapsed
    menu.classList.remove("collapsed")
    isCollapsed = false
    return

kontaktClicked = ->
    log "kontaktClicked"
    contactBlock.classList.add("lit")
    utl.scrollTo(contactBlock)
    setTimeout(unlitContactBlock, 800)
    return

unlitContactBlock = ->
    log "unlitContactBlock"
    contactBlock.classList.remove("lit")
    return
#endregion

#region exposedFunctions
#endregion

module.exports = headermodule




