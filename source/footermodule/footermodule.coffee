############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("footermodule")
#endregion


###################################################################
import * as utl from "./vanillautilmodule.js"

###################################################################
upButton = null

###################################################################
export initialize = ->
    log "footermodule.initialize"
    upButton = document.getElementById("up-button")
    upButton.addEventListener("click", upButtonClicked)
    return
    
###################################################################
upButtonClicked = ->
    log "upButtonClicked"
    utl.scrollTo(0)
    return
