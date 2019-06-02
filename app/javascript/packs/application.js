// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()

import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'

Vue.use(TurbolinksAdapter)

import Cubes from '../js/spinning_cubes'
Vue.component("cubes", Cubes)

document.addEventListener('turbolinks:load', () => {
    console.log("arg")
    const app = new Vue({
        el: "[data-behavior='vue']",
    })
})
