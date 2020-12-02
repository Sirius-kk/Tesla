<template>
  <div>
    <div>
      <div id="mid">
        <div id="head">Tesla账号登录</div>
        <div id="body">
          <div class="body-user">
            <el-input
              class="username"
              placeholder="用户名"
              v-model="username"
              clearable
              @blur.native.capture="checkUsername"
            >
            </el-input>
          </div>
          <div class="body-pwd">
            <el-input
              class="password"
              placeholder="密码"
              v-model="password"
              show-password
              @blur.native.capture="checkPassword"
            ></el-input>
          </div>
          <!-- <div class="login-else">
            <span id="login-else-click">短信验证码登录</span>
          </div> -->
          <div class="login-btn">
            <el-button class="btn" type="primary" @click="login"
              >登录</el-button
            >
          </div>
          <div class="link-btn">
            <div id="sp">
              <router-link id="sp1" to="/reg">注册</router-link>
              <span id="sp2">|</span>
              <span id="sp3">忘记密码</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="div--1"><my-footer></my-footer></div>
  </div>
</template>
<style scoped>
.div--1 {
  position: relative;
  top: 50px;
}
#mid {
  width: 800px;
  height: 760px;
  margin: 0 auto;
}

#head {
  font-size: 26px;
  font-weight: 400;
  margin-top: 100px;
  text-align: center;
}
.b1 {
  width: 100%;
  height: 48px;
  background-color: #f2f2f2;
  margin-top: -8px;
  margin-right: -14px;
}
.b2 {
  width: 300px;
}
.b3 {
  display: inline-block;
  width: 108px;
  height: 24px;
  margin-top: 10px;
}
.b4 {
  font-size: 18px;
  margin-bottom: 16px;
  display: inline-block;
  vertical-align: middle;
}
.b5 {
  margin-left: 20px;
  margin-right: 20px;
}
#body {
  width: 100%;
  margin-top: 100px;
  height: 500px;
}
.body-user {
  width: 340px;
  margin: 0 auto;
}
/* 穿透代码开始 */
.username >>> .el-input__inner {
  background-color: #eeeeee !important;
}
.password >>> .el-input__inner {
  background-color: #eeeeee !important;
}
/* 穿透代码结束 */
.el-input__inner {
  height: 100px;
}
.body-pwd {
  width: 340px;
  margin: 40px auto;
}
.login-else {
  width: 340px;
  margin: 0 auto;
  border: 1px solid rebeccapurple;
}
#login-else-click {
  color: aqua;
  float: left;
}
.login-btn {
  width: 340px;
  margin: 0 auto;
}
.btn {
  width: 100%;
  background-color: #ca141d;
  border: #ca141d;
  border-radius: 8px;
}
.btn:focus {
  background-color: #ca141d;
}
.btn:hover {
  background-color: #ca141d;
}
.link-btn {
  width: 300px;
  margin: 40px auto 0px;
}
#sp {
  width: 200px;
  margin-left: 65px;
}
#sp1 {
  display: inline-block;
  color: #007dff;
  text-decoration: none;
}
#sp2 {
  display: inline-block;
  margin-left: 20px;
  color: #b3acac;
}
#sp3 {
  display: inline-block;
  margin-left: 20px;
  color: #007dff;
  cursor: pointer;
}
</style>
<script>
export default {
  data() {
    return {
      username: "",
      password: "",
    };
  },
  methods: {
    //检测用户名
    checkUsername() {
      let uname = this.username;
      let usernameReg = /^[0-9a-zA-Z]{6,12}$/;
      if (usernameReg.test(uname)) {
        return true;
      } else {
        //终止函数的执行
        return false;
      }
    },
    //检测密码
    checkPassword() {
      let upwd = this.password;
      let passwordReg = /^[0-9A-Za-z\.\-_]{8,16}$/;
      if (passwordReg.test(upwd)) {
        return true;
      } else {
        return false;
      }
    },
    //登录
    login() {
      // 保存参数变量str中
      let str = "username=" + this.username + "&password=" + this.password;
      // 验证用户名和密码的操作放到store中
      /* 调用store中的分发的 actions */
      this.$store.dispatch('login_on_ac',str);

      // 用post发送请求
      // this.axios.post("/user/login", str).then((res) => {
      //   if (res.data.code == 1) {
      //     // 如果后台响应一弹出登陆成功 并跳转首页
      //     this.$message.success("登陆成功");
      //     this.$router.push("/");
      //   } else {
      //     this.$message.error("登录失败，用户名或密码错误");
      //   }
      // });
    },
  },
};
</script>