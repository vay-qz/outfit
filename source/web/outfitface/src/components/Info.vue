<template>
  <div>
    <form>
      <div class="row">
        <label for="style">风格</label>
      </div>
      <div class="row" >
        <div v-for="item in items" :key="item.valueOf()" id="style" class="col-md-1">
          <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" checked>
          <label class="form-check-label" for="exampleRadios1">
            {{ item }}
          </label>
        </div>
      </div>
      <div class="row mt-3">
        <div class="col">
          <label for="type" >类型</label>
          <input type="text" class="form-control" id="type">
        </div>
        <div class="col">
          <label for="length">长度</label>
          <input type="text" class="form-control" id="length">
        </div>
        <div class="col">
          <label for="price">价格</label>
          <input type="text" class="form-control" id="price">
        </div>
      </div>
      <div class="row mt-3">
        <div class="col">
          <label for="shoulderWidth">肩宽</label>
          <input type="text" class="form-control" id="shoulderWidth">
        </div>
        <div class="col">
          <label for="outsideSleeve">袖长</label>
          <input type="text" class="form-control" id="outsideSleeve">
        </div>
      </div>
      <div class="row mt-3">
        <label for="season">季节</label>
      </div>
      <div class="row">
        <div v-for="item in season" :key="item.valueOf()" id="season" class="col-md-1">
          <input class="form-check-input" type="radio" name="exampleRadios" checked>
          <label class="form-check-label" for="exampleRadios1">
            {{ item }}
          </label>
        </div>
      </div>
      <div class="row mt-3">
        <div class="custom-control custom-switch col">
          <input type="checkbox" class="custom-control-input" id="customSwitch1">
          <label class="custom-control-label" for="customSwitch1">连帽</label>
        </div>
        <div class="col">
          <label for="mColor">主色调</label>
          <colorPicker v-model="main_color" id="mColor"></colorPicker>
        </div>
        <div class="col">
          <label for="aColor">副色调</label>
          <colorPicker v-model="assistant_color" id="aColor"></colorPicker>
        </div>
      </div>
      <button class="btn btn-primary" type="submit" v-on:submit="submit">保存</button>
    </form>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: "Info",
  data: function () {
    return {
      items: [1,2],
      season: ['春', '夏', '秋', '冬', '旱季', '雨季'],
      main_color: '#ff0000',
      assistant_color: '#ff0000'
    }
  },
  created() {
    this.flush()
  },
  methods: {
    flush () {
      let that = this
      axios({
        method: 'get',
        url: '/data/male/style'
      }).then(function (response) {
        that.items = response.data
      })
    },
    submit() {

    }
  }
}
</script>

<style scoped>

</style>