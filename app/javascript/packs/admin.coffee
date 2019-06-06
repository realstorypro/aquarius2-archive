import {} from 'jquery-ujs'
import uploadcare from 'uploadcare-widget'
import Turbolinks from 'turbolinks'
import semantic_js from '../js/plugins/semantic/semantic'

import Chartkick from "chartkick"
import Chart from "chart.js"

Turbolinks.start()

window.Chartkick = Chartkick
Chartkick.addAdapter(Chart)

# needed in order for uploadcare redactor plugin to work
window.uploadcare = uploadcare

import Settings from 'beast-js/core/settings'
import Utilities from 'beast-js/core/utils'
import App from '../js/admin_app'

app = new App
settings = new Settings
utils = new Utils

settings.set version: 'Version 2 ' # set the application version
settings.set debug: false # show the debug messages
settings.set design: false # design mode disables the uploadcare widget

utils.draw 'blank_header'
utils.log 'header', '****'
utils.log 'header', 'Initializing Genesis Admin'
utils.log 'header', "#{settings.get('version')}"
utils.log 'header', "********"
utils.draw 'blank_header'
utils.log 'setting', "Debug: #{settings.get('debug')}"
utils.log 'setting', "Design: #{settings.get('design')}"

# app.initialize()

# toggle uploadcare based on settings
if settings.get('design')
  window.UPLOADCARE_LIVE = false
else
  window.UPLOADCARE_LIVE = true

# take the app out of the loading state
$ ->
  buttons = document.getElementsByClassName('button')
  for button in buttons
    button.classList.remove('loading')
    button.classList.remove('disabled')

document.addEventListener 'turbolinks:load', ->
  utils.log 'status', 'app.reload()'
  app.reload()
