<template>
  <div class="out">
    <div class="infoStyle">
      <form>
        <div class="row" style=transform:translateX(15px)>
          <label for="style">风格</label>
        </div>
        <div class="row" style=transform:translateX(20px)>
          <div v-for="item in items" :key="item.valueOf()" id="style" class="col-md-1">
            <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" checked>
            <label class="form-check-label" for="exampleRadios1">
              {{ item }}
            </label>
          </div>
        </div>
        <div class="row mt-3">
          <div class="col">
            类型<input type="text" class="form-control" id="type">
          </div>
          <div class="col">
            长度<input type="text" class="form-control" id="length">
          </div>
          <div class="col">
            价格<input type="text" class="form-control" id="price">
          </div>
        </div>
        <div class="row mt-3">
          <div class="col">
            肩宽<input type="text" class="form-control" id="shoulderWidth">
          </div>
          <div class="col">
            袖长<input type="text" class="form-control" id="outsideSleeve">
          </div>
        </div>
        <div class="row mt-3" style=transform:translateX(15px)>
          <label for="season">季节</label>
        </div>
        <div class="row" style=transform:translateX(20px)>
          <div v-for="item in season" :key="item.valueOf()" id="season" class="col-md-1">
            <input class="form-check-input" type="radio" name="exampleRadios" checked>
            <label class="form-check-label" for="exampleRadios1">
              {{ item }}
            </label>
          </div>
        </div>
        <div class="row mt-3">
          <div class="custom-control custom-switch col" style=transform:translateX(15px)>
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

<style>
.infoStyle {
  margin-left: 100px;
  margin-right: 100px;
}
.out {
  position: absolute;
  top: 100px;
  left: 100px;
  right: 100px;
  background: rgba(7, 17,27,0.3);
  border-style: solid;
  border-color: rgba(7, 17,27,0.15);
}
</style>