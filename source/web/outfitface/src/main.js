import Vue from 'vue'
import App from './App.vue'
import  axios from 'axios'
import 'bootstrap/dist/css/bootstrap.css'

import vcolorpicker from 'vcolorpicker'
Vue.use(vcolorpicker)

Vue.config.productionTip = false
axios.defaults.baseURL='http://localhost:80'

new Vue({
  render: h => h(App),
}).$mount('#app')
