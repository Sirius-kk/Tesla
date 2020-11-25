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
/* 登录页面 */
import log from '../views/Login.vue'
/* 注册页面 */
import reg from '../views/Reg.vue'
/* 搜索页面模块 */
import select from '../views/Select_product.vue'
/* 购物车模块 */
import shoppingCar from "../views/ceshi.vue"

// Vue.use(VueRouter)
Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    // meta: {
    //   keepAlive:true
    // }
  },
  {
    path: '/select/:key',
    component: select
  },
  {
    path: '/shopping_car',
    component: shoppingCar
  },
  {
    path: '/reg',
    component: reg
  },
  {
    path: '/log',
    component: log
  },
  {
    path: '/pro_alist',
    component: product_alist,
    // meta: {
    //   keepAlive:true
    // }
  },
  {
    path: '/pro_clist',
    component: product_clist,
    // meta: {
    //   keepAlive:true
    // }
  },
  {
    /*  */
    path: '/pro_plist',
    component: product_plist,
    // meta: {
    //   keepAlive:true
    // }
  },
  {
    /* 精品服饰 */
    path: '/pro_dlist',
    component: product_dlist,
    // meta: {
    //   keepAlive:true
    // }
  },
  {
    /* 周边精品 */
    path: '/pro_slist',
    component: product_slist,
    // meta: {
    //   keepAlive:true
    // }
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
  routes,
  /* *********keep-alve咋使用********* */
  // scrollBehavior (to, from, savedPosition) {
  //   if (savedPosition) {
  //     return savedPosition
  //   } else {
  //     return {
  //       x: 0,
  //       y: 0
  //     }
  //   }
  // }
  /* ****************** */
})

export default router