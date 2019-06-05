const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
const erb =  require('./loaders/erb')
const coffee = require('./loaders/coffee')
const pug =  require('./loaders/pug')
const less =  require('./loaders/less')
const sass =  require('./loaders/sass')
const webpack = require('webpack')

environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
        'window.jQuery': 'jquery',
        'window.$': 'jquery',
        jQuery: 'jquery',
        $: 'jquery',
        jquery: 'jquery'
    })
)

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
environment.loaders.prepend('erb', erb)
environment.loaders.append('coffee', coffee)
environment.loaders.append('less', less)
environment.loaders.append('sass', sass)
environment.loaders.append('pug', pug)

environment.loaders.prepend('coffee', coffee)
module.exports = environment
