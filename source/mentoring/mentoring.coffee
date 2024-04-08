import Modules from "./allmodules"

global.allModules = Modules

###################################################################
utl = Modules.vanillautilmodule
angebotMentoringJustForYou = null
angebotMentoringWillkommensfeier = null
angebotMentoringTrauung = null

###################################################################
appStartup = ->
    ## which modules shall be kickstarted?
    audioElement = document.getElementById("audio-element")
    if audioElement then audioElement.volume = 0.15

    angebotMentoringJustForYou = document.getElementById("angebot-mentoring-just-for-you")
    mentoringJustForYou = document.getElementById("mentoring-just-for-you")
    if mentoringJustForYou then mentoringJustForYou.addEventListener("click", mentoringJustForYouClicked)

    angebotMentoringWillkommensfeier = document.getElementById("angebot-mentoring-willkommensfeier")
    mentoringWillkommensfeier = document.getElementById("mentoring-willkommensfeier")
    if mentoringWillkommensfeier then mentoringWillkommensfeier.addEventListener("click", mentoringWillkommensfeierClicked)

    angebotMentoringTrauung = document.getElementById("angebot-mentoring-trauung")
    mentoringTrauung = document.getElementById("mentoring-trauung")
    if mentoringTrauung then mentoringTrauung.addEventListener("click", mentoringTrauungClicked)

    return



###################################################################
mentoringJustForYouClicked = ->
    utl.scrollTo(angebotMentoringJustForYou)
    return

mentoringTrauungClicked = ->
    utl.scrollTo(angebotMentoringTrauung)
    return

mentoringWillkommensfeierClicked = ->
    utl.scrollTo(angebotMentoringWillkommensfeier)
    return

############################################################
run = ->
    promises = (m.initialize() for n,m of Modules when m.initialize?) 
    await Promise.all(promises)
    appStartup()

############################################################
run()