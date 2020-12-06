<template>
  <div id="app">
    <Info/>
  </div>
</template>

<script>
import Info from "@/components/Info";

export default {
  name: 'App',
  components: {
    Info
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  margin-top: 60px;
  margin-left: 100px;
  margin-right: 100px;
}
</style>
