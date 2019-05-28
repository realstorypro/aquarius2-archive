<template lang="pug">
  h1 {{ message }}
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello zVue!"
    }
  }
}
</script>

<style lang="less" scoped>
h1 {
    font-size: 3em
}
</style>
