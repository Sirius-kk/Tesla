import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
/* 导入ElementUI组件库 */
import ElementUI from 'element-ui';
/* 导入ElementUI样式表 */
import 'element-ui/lib/theme-chalk/index.css';
/* 导入Myheader模块 */
import myheader from "./components/Myheader.vue";

Vue.config.productionTip = false
/* 添加ElementUI为Vue公共组件 */
Vue.use(ElementUI);
/* 把myheader转成全局组件 */
Vue.component("my-header",myheader);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
