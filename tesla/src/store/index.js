import Vue from 'vue'
import Vuex from 'vuex'
/* 引入axios模块 */
import axios from "axios"
/* 引入router模块 */
import router from '../router'

Vue.use(Vuex)

export default new Vuex.Store({
  // 共享状态(共享数据)
  state: {/* 可以在任何一个组件中被访问到 */
    // nav: [
    //   {
    //     activity: 
    //   }
    // ]
  },
  // 专门来修改state中的共享状态的操作方法
  //           使用方法
  // this.$store.commit('方法名称'[,payload])
  mutations: {

  },
  // 可以发送发送异步请求
  // Actions提交的是Mutations，而不能直接变更state,要想改变state,必须通过调用Mutations
  actions: {

  },
  modules: {

  }
})
