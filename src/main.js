import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
/* 导入ElementUI组件库 */
import ElementUI from 'element-ui';
/* 导入ElementUI样式表 */
import 'element-ui/lib/theme-chalk/index.css';

Vue.config.productionTip = false
/* 添加ElementUI为Vue公共组件 */
Vue.use(ElementUI);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
