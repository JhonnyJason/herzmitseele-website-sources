headermodule = {name: "headermodule"}

#region modulesFromTheEnvironment
#endregion

#region HTMLElements
menu = null
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
    menu = document.getElementById("menu")
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
#endregion

#region exposedFunctions
#endregion

module.exports = headermodule