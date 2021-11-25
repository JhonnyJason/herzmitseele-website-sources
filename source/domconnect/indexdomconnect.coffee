indexdomconnect = {name: "indexdomconnect"}

############################################################
indexdomconnect.initialize = () ->
    global.contactBlock = document.getElementById("contact-block")
    global.upButton = document.getElementById("up-button")
    global.videoFrame = document.getElementById("video-frame")
    return
    
module.exports = indexdomconnect