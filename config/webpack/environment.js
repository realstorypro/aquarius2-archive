const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
const erb =  require('./loaders/erb')
const coffee = require('./loaders/coffee')
const pug =  require('./loaders/pug')
const less =  require('./loaders/less')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
environment.loaders.prepend('erb', erb)
environment.loaders.append('coffee', coffee)
environment.loaders.append('less', less)
environment.loaders.append('pug', pug)

module.exports = environment
