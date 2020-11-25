<template>
  <div id="mid">
    <div id="head">Tesla账号注册</div>
    <div id="body">
      <div class="body-user">
        <el-input
          class="username"
          placeholder="请输入6到12位用户名"
          v-model="username"
          clearable
          @blur.native.capture="checkUsername"
        >
        </el-input>
        <span
          style="float: right; clear: both; color: red"
          :style="{ display: a }"
          >用户名格式错误</span
        >
      </div>
      <div class="body-pwd">
        <el-input
          class="password"
          placeholder="请输入8到16位密码"
          v-model="password"
          show-password
          @blur.native.capture="checkPassword"
        ></el-input>
        <span
          style="float: right; clear: both; color: red"
          :style="{ display: b }"
          >密码格式错误</span
        >
      </div>
      <div class="body-pwd">
        <el-input
          class="password"
          placeholder="请再次输入密码"
          v-model="cfpassword"
          show-password
          @blur.native.capture="checkcfPassword"
        ></el-input>
        <span
          style="float: right; clear: both; color: red"
          :style="{ display: c }"
          >两次密码不一致</span
        >
      </div>

      <div class="login-btn">
        <el-button class="btn" type="primary" @click="reglogin"
          >免费注册</el-button
        >
      </div>
    </div>
    <my-footer></my-footer>
  </div>
</template>
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
  margin: 40px auto;
}
.login-else {
  width: 340px;
  margin: 0 auto;
  border: 1px solid rebeccapurple;
}

.login-btn {
  width: 340px;
  margin: 0 auto;
}
.btn {
  width: 100%;
  border-radius: 8px;
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
      cfpassword: "",
      a: "none",
      b: "none",
      c: "none",
    };
  },
  methods: {
    //检测用户名
    checkUsername() {
      let uname = this.username;
      let usernameReg = /^[0-9a-zA-Z]{6,12}$/;
      if (usernameReg.test(uname)) {
        
        this.a = "none";
        return true;
      } else {
        this.a = "";
        //终止函数的执行
        return false;
      }
    },
    //检测密码
    checkPassword() {
      let upwd = this.password;
      let passwordReg = /^[0-9A-Za-z\.\-_]{8,16}$/;
      if (passwordReg.test(upwd)) {
        this.b = "none";
        if (this.cfpassword != "") {
          this.checkcfPassword();
        }
        return true;
      } else {
        this.b = "";
        return false;
      }
    },
    // 重复验证密码
    checkcfPassword() {
      let cfupwd = this.cfpassword;
      let upwd = this.password;
      if (cfupwd != upwd && cfupwd != "") {
        this.c = "none";
        return true;
      } else {
        this.c = "";
        return false;
      }
    },
    // 注册
    reglogin() {
      if (
        this.checkUsername() &&
        this.checkPassword() &&
        this.checkcfPassword()
      ) {
        this.$message({
          message: "恭喜您，注册成功",
          type: "success",
        });
        this.$router.push("/");
      } else {
        this.$message.error("注册失败，密码或用户名错误");
      }
    },
  },
};
</script>