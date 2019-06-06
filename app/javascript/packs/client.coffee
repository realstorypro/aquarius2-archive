import {} from 'jquery-ujs'
import uploadcare from 'uploadcare-widget'
import Turbolinks from 'turbolinks'
import semantic_js from '../js/plugins/semantic/semantic'
import ahoy from 'ahoy.js'

Turbolinks.start()
ahoy.trackView()

import Settings from 'beast-js/core/settings'
import Utilities from 'beast-js/core/utils'
import App from '../js/client_app'

settings = new Settings
utils = new Utilities
app = new App

settings.set version: 'Version 1.0 ' # set the application version
settings.set debug: true # show the debug messages
settings.set design: false # design mode disables the uploadcare widget

utils.draw 'blank_header'
utils.log 'header', '****'
utils.log 'header', 'Initializing Goodlogik.JS'
utils.log 'header', "#{settings.get('version')}"
utils.log 'header', "********"
utils.draw 'blank_header'
utils.log 'setting', "Debug: #{settings.get('debug')}"
utils.log 'setting', "Design: #{settings.get('design')}"

app.initialize()

# toggle uploadcare based on settings
if settings.get('design')
    window.UPLOADCARE_LIVE = false
else
    window.UPLOADCARE_LIVE = true

# take the app out of the loading state
$ ->
    buttons = document.getElementsByClassName('button enhanced')
    for button in buttons
        button.classList.remove('loading')
        button.classList.remove('disabled')

document.addEventListener 'turbolinks:load', ->
    utils.log 'status', 'app.reload()'
    app.reload()

    ahoy.trackView()

    unless typeof(window.segment_js_write_key) == 'undefined'
        analytics.page()
