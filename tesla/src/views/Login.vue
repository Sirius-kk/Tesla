<template>
  <div id="app">
    <div id="mid">
      <div id="head">Tesla账号登录</div>
      <div id="body">
        <div class="body-user">
          <el-input
            class="username"
            placeholder="用户名"
            v-model="username"
            clearable
          >
          </el-input>
        </div>
        <div class="body-pwd">
          <el-input
            class="password"
            placeholder="密码"
            v-model="password"
            show-password
          ></el-input>
          <span
            style="float: right; clear: both; color: red"
            :style="{ display: b }"
            >密码格式错误</span
          >
        </div>
        <!-- <div class="login-else">
            <span id="login-else-click">短信验证码登录</span>
          </div> -->
        <div class="login-btn">
          <el-button class="btn" type="primary" @click="login">登录</el-button>
        </div>
        <div class="link-btn">
          <div id="sp">
            <router-link id="sp1" to="/register">注册</router-link>
            <span id="sp2">|</span>
            <span id="sp3">忘记密码</span>
          </div>
        </div>
      </div>
    </div>
    <div id="footer">
      <div>
        <el-row>
          <el-col :span="24"
            ><div class="grid-content bg-purple-dark">
              <div class="c1">
                <div class="c3">
                  <div class="c2">
                    <el-link
                      href="https://element.eleme.io"
                      target="_blank"
                      :underline="false"
                      >Tesla账号与云空间协议</el-link
                    >
                  </div>
                  <div class="c2">|</div>
                  <div class="c2">
                    <el-link
                      href="https://element.eleme.io"
                      target="_blank"
                      :underline="false"
                      >关于Tesla账号与云空间隐私的说明</el-link
                    >
                  </div>
                  <div class="c2">|</div>
                  <div class="c2">
                    <el-link
                      href="https://element.eleme.io"
                      target="_blank"
                      :underline="false"
                      >常见问题</el-link
                    >
                  </div>
                  <div class="c2">|</div>
                  <div class="c2">
                    <el-link
                      href="https://element.eleme.io"
                      target="_blank"
                      :underline="false"
                      >Cookies</el-link
                    >
                  </div>
                </div>
                <div class="c4">
                  <span class="c5">Tesla账号版权所有©2011-2020</span>
                </div>
              </div>
            </div></el-col
          >
        </el-row>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      a: "none",
      b: "none",
    };
  },
  methods: {
    login() {
      this.axios.post();
    },
  },
};
</script>
<style scoped>
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
  margin: 0 auto;
  margin-top: 40px;
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
.c1 {
  width: 100%;
  height: 90px;
  background-color: #f2f2f2;
  position: fixed;
  bottom: 0;
}
.c2 {
  display: inline-block;
  vertical-align: middle;
  margin: 0 10px;
}
.c3 {
  width: 610px;
  padding: 10px;
  margin: 0 auto;
}
.c4 {
  width: 189px;
  padding: 10px;
  margin: 0 auto;
}
.c5 {
  color: #a9a9a9;
  font-size: 14px;
}
.el-link.el-link--default:hover {
  color: black;
}
</style>