############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("servicedescriptionmodule")
#endregion

###################################################################
import * as utl from "./vanillautilmodule.js"

###################################################################
moreInfoDownButton = null
serviceOfferListing = null

###################################################################
export initialize = () ->
    log "initialize"
    moreInfoDownButton = document.getElementById("more-info-down-button")
    serviceOfferListing = document.getElementById("serviceofferlisting")

    if moreInfoDownButton then moreInfoDownButton.addEventListener("click", moreInfoDownButtonClicked)
    return
    

###################################################################
moreInfoDownButtonClicked = ->
    log "moreInfoDownButtonClicked"
    utl.scrollTo(serviceOfferListing)
    return