import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
/* 导入ElementUI组件库 */
import ElementUI from 'element-ui';
/* 导入ElementUI样式表 */
import 'element-ui/lib/theme-chalk/index.css';
/* 引入axios模块 */
import axios from "axios";

/* 导入Myheader_index模块 */
import myHeaderIndex from "./components/Myheader_index.vue";
/* 导入Myheader_list模块 */
import myHeaderList from "./components/Myheader_list.vue";
/* 导入公共底部 */
import myFooter from "./components/Myfooter.vue"

/* *********************** */
// $.ajaxSetup({
//   async: false
// });
/* *********************** */
Vue.config.productionTip = false
/* 添加ElementUI为Vue公共组件 */
Vue.use(ElementUI);
/* 把axios添加为Vue的原型对象,供全局使用 */
Vue.prototype.axios=axios;
// /* **********cors跨域解决************************** */
// // /* 设置axios基础的URL地址，并且决定了WEB的服务器端口号 */
// axios.defaults.baseURL = 'http://localhost:3003'
// /* **********cors跨域解决************************** */
/* **********http-proxy 使用失败****************** */
/* 配置axios基础路径 */
axios.defaults.baseURL="/api";
/* **********http-proxy 使用失败****************** */

/* 把myheader转成全局组件 */
Vue.component("my-header-index",myHeaderIndex);
Vue.component("my-header-list",myHeaderList);
Vue.component("my-footer",myFooter);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
