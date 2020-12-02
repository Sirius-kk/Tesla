import Vue from 'vue'
import Vuex from 'vuex'
/* 引入axios模块 */
import axios from "axios"
/* 引入router模块 */
import router from '../router'

Vue.use(Vuex)

export default new Vuex.Store({
  // 共享状态(共享数据)
  // this.$store.state.变量
  state: {/* 可以在任何一个组件中被访问到 */
    /* 登录状态: 1为已登录,0为未登录  */
    /* 如果登陆会去loclStorage中设置islogined = 1 */
    // isLogined: false,
		isLogined: localStorage.getItem('isLogined') || 0,
    /* 用户信息: ID、用户名、购物车id、订单id, 因为一次登陆只有一个用户，所以直接用对象来接 */
    userInfo: JSON.parse(localStorage.getItem('userInfo')) || {},
  },
  // 专门来修改state中的共享状态的操作方法
  //           使用方法
  // this.$store.commit('方法名称'[,payload])
  mutations: {
    //state形参代表的是当前store内的所有state
    //在提交mutations时无需指定该参数值,会自动注入到当前方法的内部
    login_on_mu(state,payload){			
			// 修改登录状态为1
			state.isLogined = 1;
			// 修改登录用户的相关信息
			state.userInfo = payload;
		},
    /* 注销 */
		logout_out_mu(state){
			// 修改登录状态为0
			state.isLogined = 0;
			// 修改登录用户的相关信息为空对象
			state.userInfo = {};
		},
  },
  actions: {
    // 可以发送发送异步请求
    // Actions提交的是Mutations，而不能直接变更state,要想改变state,必须通过调用Mutations
		//context参数代表当前store内的所有state、getters、mutations及actions

    /* 登陆，发送异步请求，成功 则更改登陆状态，否则进行相应提示 */
    login_on_ac(context, payload) {/* 在登陆时被调用 */
      this.axios.post("/user/login", payload).then((res) => {
        if (res.data.code == 1) {
          // 提交Mutations
          context.commit('login_on_mu',res.data.userInfo);
          // 
          // 如果后台响应一弹出登陆成功 并跳转首页
          this.$message.success("登陆成功");
          this.$router.push("/");
        } else {
          this.$message.error("登录失败，用户名或密码错误");
        }
      });
    },
  },
  modules: {

  }
})
