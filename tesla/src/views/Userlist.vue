<template>
  <div class="contenter">
    <el-tabs v-model="activeName">
      <el-tab-pane label="个人资料" name="1">
        <div class="div-1">您好，老王</div>
        <div class="div-2">
          <div class="div-2-1">
            <p style="color: #000; font-size: 24px">账户信息</p>
            <div style="width: 250px; margin-top: 30px">
              <p style="margin-bottom: 10px">手机</p>
              <el-input
                suffix-icon="el-icon-edit"
                disabled
                v-model="iphone"
                placeholder="请输入内容"
              ></el-input>
            </div>
            <div style="margin-top: 60px">
              <div class="div-2-2">
                <span style="font-size: 24px; color: #000">基本信息</span>
                <a
                  href="javascript:;"
                  style="color: #0aa1ed; padding-top: 10px"
                  @click="bianji"
                  >{{ z }}</a
                >
              </div>
              <div style="margin-top: 40px">
                <div style="display: flex">
                  <div style="width: 50%">
                    <p style="margin-bottom: 20px">姓名</p>
                    <div style="width: 250px">
                      <el-input
                        suffix-icon="el-icon-edit"
                        :disabled="xiugai"
                        v-model="name"
                        placeholder="请输入内容"
                      ></el-input>
                    </div>
                  </div>
                  <div style="width: 50%">
                    <p style="margin-bottom: 10px; padding: 10px">性别</p>
                    <div style="margin-top: 25px">
                      <el-radio v-model="size" :disabled="xiugai" label="1"
                        >男</el-radio
                      >
                      <el-radio v-model="size" :disabled="xiugai" label="2"
                        >女</el-radio
                      >
                    </div>
                  </div>
                </div>
                <div style="display: flex; margin-top: 50px">
                  <div style="width: 50%">
                    <p style="margin-bottom: 20px">生日</p>
                    <div style="width: 250px">
                      <el-date-picker
                        v-model="birsday"
                        type="date"
                        :disabled="xiugai"
                        placeholder="选择日期"
                        format="yyyy 年 MM 月 dd 日"
                      >
                      </el-date-picker>
                    </div>
                  </div>
                  <div style="width: 50%">
                    <p style="margin-bottom: 20px">职业</p>
                    <div style="width: 250px">
                      <el-input
                        v-model="zhiye"
                        :disabled="xiugai"
                        placeholder="请输入内容"
                      ></el-input>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div style="margin-top: 60px">
              <p style="color: #000; font-size: 24px">收货地址</p>
              <div id="c1">
                <!-- ****************************************************************************************************** -->
                <!-- 用一个数组保存用户每次添加的地址，使用for循环来创建出来多个收货地址 -->
                <!-- 问题： 添加地址弹出的小框表单没有写验证，删除地址没有的A标签没有绑定事件 -->
                <div
                  v-for="(item, index) of shouhuo"
                  :key="index"
                  style="
                    display: inline-block;
                    padding: 30px;
                    margin: 20px 40px 10px 0;
                    width: 280px;
                    height: 120px;
                    background-color: #f8f8f8;
                  "
                >
                  <p>姓名：{{ item.name }}</p>
                  <p style="margin: 20px 0">手机：{{ item.dianhua }}</p>
                  <p style="margin: 0 0 40px 0">地址：{{ item.dizhi1 }}</p>
                  <a
                    style="
                      color: #0aa1ed;
                      margin-left: 200px;
                      padding-top: 10px;
                    "
                    href="javascript:;"
                    >删除</a
                  >
                </div>
                <!--**************************************************************************************************  -->
              </div>
              <div class="dizhi" @click="dizhi" style="margin-top: 35px">
                <img
                  style="margin-top: -10px"
                  src="../assets/imgs/+.png"
                  alt=""
                />
                <span style="font-size: 20px; margin-left: 10px; color: #0aa1ed"
                  >添加新的地址</span
                >
              </div>
            </div>
          </div>
        </div>
      </el-tab-pane>
    </el-tabs>
    <!-- ************************************************************************************** -->
    <!-- 弹出添加地址的div部分 -->
    <div :style="{ display: a }" style="padding-top: 20px" class="div-dizhi">
      <span @click="guanbi" style="margin: 0 0 0 550px"
        ><img src="../assets/imgs/x.png" alt=""
      /></span>
      <div
        style="
          color: #666;
          font-size: 24px;
          text-align: center;
          padding-top: 20px;
        "
      >
        新增收货地址
      </div>
      <div
        style="width: 420px; height: 620px; margin: 0 auto; margin-top: 30px"
      >
        <div>
          <p style="margin-bottom: 20px">姓名</p>
          <input
            type="text"
            class="input3"
            v-model="name1"
            placeholder="请输入收件人姓名"
          />
        </div>
        <div style="margin: 50px 0">
          <p style="margin-bottom: 20px">手机</p>
          <input
            type="text"
            class="input3"
            v-model="dianhua"
            placeholder="请输入11位中国手机号码"
          />
        </div>
        <div style="margin: 50px 0">
          <p style="margin-bottom: 20px">地址</p>
          <input
            type="text"
            v-model="dizhi1"
            class="input3"
            placeholder="请输入详细地址"
          />
        </div>
        <div style="margin: 50px 0">
          <p style="margin-bottom: 20px">邮政编码</p>
          <input
            type="text"
            class="input3"
            v-model="bianma"
            placeholder="请输入邮政编码"
          />
        </div>
        <div style="margin: 50px 0; text-align: center">
          <span style="margin-right: 45px"
            ><el-button type="info" @click="guanbi">取消</el-button></span
          >
          <el-button type="primary" @click="tijiao">提交</el-button>
        </div>
      </div>
      <!-- 完 -->
    </div>
    <!-- 遮罩层的高度需要动态获取 目前没有做到 -->
    <div :style="{ display: a }" class="zhezhao"></div>
  </div>
</template>
<style scoped>
.contenter {
  width: 940px;
  margin: 0 auto;
}

.div-1 {
  font-size: 36px;
  color: #666666;
  padding-bottom: 30px;
  margin-top: 50px;
  border-bottom: 2px solid #e4e7ed;
}
.div-2 {
  margin-top: 40px;
}
.div-2-1 {
  margin-left: 10px;
}
.div-2-2 {
  display: flex;
  justify-content: space-between;
}
.dizhi {
  cursor: pointer;
}
.div-dizhi {
  width: 600px;
  height: 800px;
  z-index: 5;
  position: fixed;
  top: 5%;
  left: 35%;
  background-color: #fff;
}
.zhezhao {
  width: 100%;
  height: 100%;
  z-index: 3;
  position: fixed;
  top: 0;
  left: 0;
  background-color: black;
  opacity: 0.7;
}
.input3 {
  width: 420px;
  height: 40px;
  border: 0;
  border-bottom: 1px solid #ccc;
}
</style>
<script>
export default {
  data() {
    return {
      activeName: "1",
      iphone: "13721625428",
      size: "1",
      birsday: "1999-11-05",
      z: "编辑",
      xiugai: true,
      name: "葛大爷",
      zhiye: "抠脚",
      a: "none",
      no: "none",
      name1: "",
      dizhi1: "",
      bianma: "",
      dianhua: "",
      shouhuo: [],
    };
  },
  methods: {
    bianji() {
      if (this.z == "编辑") {
        this.xiugai = false;
        this.z = "保存";
      } else {
        this.xiugai = true;
        this.z = "编辑";
      }
    },
    dizhi() {
      this.a = "";
    },
    guanbi() {
      this.a = "none";
    },
    tijiao() {
      this.a = "none";
      let a = {
        name: this.name1,
        dizhi1: this.dizhi1,
        bianma: this.bianma,
        dianhua: this.dianhua,
      };
      this.shouhuo.push(a);
    },
  },
};
</script>