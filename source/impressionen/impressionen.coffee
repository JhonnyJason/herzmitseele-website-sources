import Modules from "./allmodules"

import lightGallery from "lightgallery"
import lgThumbnail from 'lightgallery/plugins/thumbnail'
import lgZoom from 'lightgallery/plugins/zoom'

global.allModules = Modules

############################################################
appStartup = ->
    ## which modules shall be kickstarted?
    galleryOptions = {
        plugins: [lgThumbnail, lgZoom],
        download: false
    }

    gallery = document.getElementById("impressionen-gallery")
    lightGallery(gallery, galleryOptions)
    return

############################################################
run = ->
    promises = (m.initialize() for n,m of Modules when m.initialize?) 
    await Promise.all(promises)
    appStartup()

############################################################
run()