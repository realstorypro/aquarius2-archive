module.exports = {
  test: [/\.scss$/, /\.sass$/],
  use: [
    "style-loader",
    "css-loader",
    "sass-loader"
  ]
}

