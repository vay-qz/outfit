<template>
  <div>
    <div class="bg"/>
    <div id="app">
      <Info/>
    </div>
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
  color: white;
}
.bg {
  background-image: url("~@/assets/bg.jpg");
  width: 100%;
  height: 100%;
  background-size: cover;
  background-position: center;
  position: absolute;
  filter: blur(2px);
}
</style>
