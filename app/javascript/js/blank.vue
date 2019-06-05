<template lang="pug">
  h1 {{ message }}
</template>

<script lang="coffee">
export default
  data: ->
      message: "Hello zVue!"
</script>

<style lang="scss" scoped>
h1 {
    font-size: 3em
}
</style>
