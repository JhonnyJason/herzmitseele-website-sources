import Modules from "./allmodules"
import domconnect from "./indexdomconnect"
domconnect.initialize()

global.allModules = Modules

############################################################
# allTestimonials = document.getElementById("testimonials-frame").querySelectorAll("article")
# intervalId = null


############################################################
nextTestimonial = ->
    console.log("nextTestimonial")

    for el,i in allTestimonials when el.classList.contains("shown")
        el.classList.remove("shown")
        nextEl = allTestimonials[(i + 1) % allTestimonials.length]
        nextEl.classList.add("shown")
        console.log("found right element!")
        break

    return

############################################################
stopIterating = ->
    console.log("stopIterating")
    return false unless intervalId?
    console.log("clearing interval...")
    clearInterval(intervalId)
    intervalId = null
    return true

############################################################
cardsClicked = ->
    console.log("cardsClicked")
    if stopIterating() then return
    else nextTestimonial()
    return
    
############################################################
appStartup = ->
    videoFrame.volume=0.1
    # videoFrame.addEventListener("click", toggleMuteness)
    # videoFrame.addEventListener("click", toggleMuteness)
    ## which modules shall be kickstarted?
    # allTestimonials[0].classList.add("shown")
    # intervalId = setInterval(nextTestimonial, 12000)
    # cardsEl = document.getElementById("testimonials-frame").querySelector(".cards")
    # cardsEl.addEventListener("click", cardsClicked)
    return

############################################################
run = ->
    promises = (m.initialize() for n,m of Modules when m.initialize?) 
    await Promise.all(promises)
    appStartup()

############################################################
run()