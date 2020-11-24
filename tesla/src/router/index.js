import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
/* 导入 a 商品列表模块 */
import product_alist from '../views/Product_alist.vue'
/* 导入 c 商品列表模块 */
import product_clist from '../views/Product_clist.vue'
/* 导入 p 商品列表模块 */
import product_plist from '../views/Product_plist.vue'
/* 导入 d 商品列表模块 */
import product_dlist from '../views/Product_dlist.vue'
/* 导入 s 商品列表模块 */
import product_slist from '../views/Product_slist.vue'
/* 導入詳情模塊 */
import detail from '../views/Detail'

// Vue.use(VueRouter)
Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/pro_alist',
    component: product_alist
  },
  {
    path: '/pro_clist',
    component: product_clist
  },
  {
    path: '/pro_plist',
    component: product_plist
  },
  {
    path: '/pro_dlist',
    component: product_dlist
  },
  {
    path: '/pro_slist',
    component: product_slist
  },
  {
    /*  */
    path: '/detail/:pid&:tableName',
    /*  */
    component: detail
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
