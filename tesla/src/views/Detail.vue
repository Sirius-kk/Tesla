<template>
  <div class="tontenter">
    <my-header-list></my-header-list>
    <div class="left">
      <img
        class="img1"
        v-for="(item, index) of image"
        :src="item"
        :key="index"
        alt=""
      />
    </div>
    <div class="right">
      <div class="title">
        <span>{{ data.title }}</span>
        <p>¥ {{ options[value].price }}</p>
      </div>
      <div v-if="data.tp != null">
        <el-select v-model="value" placeholder="请选择">
          <!-- ****************** -->
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          ></el-option>
          <!-- ****************** -->
        </el-select>
      </div>
      <div class="content" v-if="data.color != null">
        <p class="p1">{{ data.color }}</p>
        <el-radio v-model="radio" label="1"
          ><span class="span span1"></span
        ></el-radio>
        <el-radio v-model="radio" label="2"
          ><span class="span span2"></span
        ></el-radio>
        <el-radio v-model="radio" label="3"
          ><span class="span span3"></span
        ></el-radio>
      </div>
      <div v-if="data.size != null">
        <p class="p1">大小</p>
        <div class="chicun">
          <a href="javascript:;">2T</a>
          <a href="javascript:;">4T</a>
          <a href="javascript:;">6</a>
          <a href="javascript:;">8</a>
          <a href="javascript:;">10</a>
          <a href="javascript:;">12</a>
        </div>
      </div>
      <div class="car">
        <p class="p1">数量</p>
        <el-input-number
          size="small"
          v-model="num"
          @change="handleChange"
          :min="1"
          :max="10"
          label="描述文字"
        ></el-input-number>
        <p style="margin-top: 30px">
          <button class="my_btn">添加进购物车</button>
        </p>
        <p class="help">需要帮助？</p>
      </div>
      <div class="div_2" v-html="data.ds"></div>
    </div>
  </div>
</template>
<style  scoped>
.tontenter {
  padding: 0 24px 0 24px;
  margin-top: 36px;
}
.left {
  width: 65%;
  padding: 24px 32px 0 0;
  float: left;
}
.img1 {
  width: 100%;
  height: 100%;
  margin-bottom: 20px;
}
.right {
  width: 25%;
  float: right;
  padding: 24px 0 0 0;
  position: fixed;
  right: 120px;
}
.title span {
  font-size: 32px;
  font-weight: 700;
  color: #000;
}
.title p {
  font-size: 20px;
  font-weight: 400;
  margin: 7px 0 40px 0;
}
.p1 {
  margin: 0 0 15px 0;
}
/*  */
.span {
  position: absolute;
  top: -4px;
}
.el-input-number__increase:hover:not(.is-disabled)
  ~ .el-input
  .el-input__inner:not(.is-disabled) {
  border: 0;
  outline: 0;
}
/*  */
.span1 {
  display: inline-block;
  width: 20px;
  height: 20px;
  background-color: red;
}
.span2 {
  display: inline-block;
  width: 20px;
  height: 20px;
  background-color: green;
}
.span3 {
  display: inline-block;
  width: 20px;
  height: 20px;
  background-color: yellow;
}
.content {
  margin-bottom: 30px;
  position: relative;
}
.chicun a {
  color: #000;
  font-weight: 900;
  margin-right: 30px;
}
.chicun a:focus {
  border-bottom: 3px solid #000;
}
.car {
  margin-top: 30px;
}
.my_btn {
  width: 320px;
  height: 40px;
  font-size: 14px;
  padding: 5px 0 5px 0;
  color: white;
  border: 0;
  border-radius: 50px;
  background-color: #3e6ae1;
}
.my_btn:hover {
  background-color: #032ea3;
  transition: all 1s linear;
}
.help {
  margin-top: 10px;
  border-bottom: 2px solid #000;
  width: 85px;
  cursor: pointer;
}
.div_2 {
  margin-top: 100px;
}
</style>
<script>
export default {
  data() {
    return {
      radio: "1",
      num: "1",
      data: [],
      image: [],
      img: [],
      options: [
        {
          value: "0",
          label: "请选择",
          price: "300-350",
        },
        {
          value: "1",
          label: "iPhone",
          price: "300",
        },
        {
          value: "2",
          label: "USB-C",
          price: "325",
        },
        {
          value: "3",
          label: "Micro USB",
          price: "350",
        },
      ],
      value: "1",
    };
  },
  methods: {
    handleChange(value) {},
    add() {
      //获取URL的参数
      let pid = this.$route.params.pid;
      let tableName = this.$route.params.tableName;
      console.log(pid,tableName);
      //获取URL的参数
      this.axios.get(`/product/detail_product?pid=${pid}&tableName=${tableName}`).then((res) => {
        let data = res.data.result; // 一条数据
        this.data = data;
        for (var key in data) {
          if (key == "pic_detais") {
            this.img = data.pic_detais.split(".jpg"); // 数组
            for (var key in this.img) {
              this.img[key] += `.jpg`;
            }
            this.img.pop();
            this.img.forEach((item) => {
              item = require(`../assets/img/pro_details/${item}`);
              this.image.push(item);
            });
          }
        }
      });
    },
  },
  mounted() {
    this.add();
  },
};
</script>