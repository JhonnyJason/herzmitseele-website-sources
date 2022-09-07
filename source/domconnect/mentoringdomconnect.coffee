mentoringdomconnect = {name: "mentoringdomconnect"}

############################################################
mentoringdomconnect.initialize = () ->
    global.contactBlock = document.getElementById("contact-block")
    global.upButton = document.getElementById("up-button")
    global.mentoringJustForYou = document.getElementById("mentoring-just-for-you")
    global.mentoringWillkommensfeier = document.getElementById("mentoring-willkommensfeier")
    global.mentoringTrauung = document.getElementById("mentoring-trauung")
    return
    
module.exports = mentoringdomconnect