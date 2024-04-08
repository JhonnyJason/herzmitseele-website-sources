############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("headermodule")
#endregion

#region modulesFromTheEnvironment
###################################################################
import *  as utl from "./vanillautilmodule.js"

###################################################################
menu = null
contactBlock = null
contactLink = null


###################################################################
isCollapsed = false

###################################################################
export initialize = ->
    log "initialize"
    menu = document.getElementById("menu")
    contactBlock = document.getElementById("contact-block")
    contactLink = document.getElementById("menu-link-kontakt")

    contactLink.addEventListener("click", kontaktClicked)

    document.addEventListener("scroll", onScroll)
    menu.addEventListener("click", menuClicked)
    return

    
###################################################################
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
