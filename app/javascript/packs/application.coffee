import {} from 'jquery-ujs'
import uploadcare from 'uploadcare-widget'
import Turbolinks from 'turbolinks'

Turbolinks.start()

import Settings from 'beast-js/core/settings'
import Utilities from 'beast-js/core/utils'

settings = new Settings
utils = new Utilities

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

import Vue from 'vue/dist/vue.esm'

import TurbolinksAdapter from 'vue-turbolinks'

Vue.use(TurbolinksAdapter)

document.addEventListener 'turbolinks:load', =>
    app = new Vue
        el: "[data-behavior='vue']"
