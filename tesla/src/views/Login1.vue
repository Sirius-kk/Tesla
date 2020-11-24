<template>
  <div>
    <el-row :gutter="20">
      <el-col :span="4" :offset="10">
        <el-input
          v-model="account_num"
          placeholder="请输入手机号或者邮箱"
        ></el-input>
        <div class="inp">
          <el-input
            placeholder="请输入密码"
            v-model="password"
            show-password
          ></el-input>
        </div>
        <el-button type="primary" @click="login">登录</el-button>
      </el-col>
    </el-row>
  </div>
</template>
<script>
export default {
  data() {
    return {
      account_num: "",
      password: "",
    };
  },
  methods: {
    login() {
      console.log(this.account_num, this.password);
    },
  },
};
</script>
<style scoped>
.el-col-4 {
  margin-top: 100px;
  min-width: 260px;
}
.inp {
  margin-top: 20px;
}
.el-button--primary {
  margin-top: 30px;
  width: 100%;
}
</style>