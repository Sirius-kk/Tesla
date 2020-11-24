<template>
  <div>
    <!-- 购物车第一部分主体 -->
    <el-row class="cart_top">
      <el-col :span="23"
        ><div>您的购物车({{ number }})</div></el-col
      >
      <el-col :span="1"
        ><div><img src="../../public/img/差 (1).png" /></div
      ></el-col>
    </el-row>
    <!-- 购物车第二部分主体 -->
    <el-row class="cart_middle">
      <div v-for="product in products" :key="product.id" @change="handleOneChange">
        <div id="cont">
          <el-col :span="6">
            <div id="middle_img1">
              <img src="../../public/img/12345.jpg" alt="" />
            </div>
          </el-col>
          <el-col :span="12">
            <p>{{ product.name }}</p>
            <p>{{ product.size }}</p>
            <p>￥{{ product.price }}</p>
            <el-input-number
              v-model="product.num"
              @change="handleChangeNum(product.id)"
              :min="0"
              size="mini"
              class="btn1"
            ></el-input-number>
          </el-col>
          <el-col :span="5" class="money" >
            <p>￥{{ product.OnePrice }}</p>
          </el-col>
          <el-col :span="1" class="middle_img money">
            <img @click="clear1" src="../../public/img/差号.png" />
          </el-col>
        </div>
      </div>
    </el-row>

    <!-- 购物车第三部分主体 -->
    <el-row class="cart_bottom">
      <el-col :span="24">
        <div>
          <p>购物车总额：¥{{allPrice}}</p>
          <el-button type="primary" round  class="cash"  @click="submitBtn"
            >结账</el-button
          >
          <p>所有订单均可享受免费配送。</p>
        </div>
      </el-col>
    </el-row>
  </div>
</template>
<style scoped>
#cont::after {
  content: "";
  display: block;
  clear: both;
}
#cont{margin-bottom: 20px;}
.cart_top div > img {
  width: 16px;
}
.middle_img > img {
  width: 20px;
}
.cart_top,
.cart_middle,
.cart_bottom {
  width: 595px;
  border: 1px solid #d0d1d2;
}
.cart_bottom :last-child {
  font-size: 12px;
}
.cart_top,
.cart_middle {
  padding: 40px 20px;
}
.cart_bottom {
  padding: 40px 0px;
  text-align: center;
}
.cart_bottom p,
.cash {
  margin-top: 30px;
}
.cart_middle p + p {
  margin-top: 10px;
}
#middle_img1 > img {
  width: 80px;
}

.cart_middle {
  height: 677px;
}
.cart_top {
  height: 53px;
}
.cart_bottom {
  height: 207px;
}
.money p {
  margin-top: 17px;
}
.money img {
  margin-top: 13px;
}
.btn1 {
  margin-top: 5px;
}
</style>
<script>
// const goodOptions = ["男装 Plaid Mode 短袖T恤","男装 Plaid Mode 短袖T恤"];
export default {
  data() {
    return {
      products: [
        {
          name: "男装 Plaid Mode 短袖T恤", //产品名称
          size: "黑色 M", //规格
          price: 800, //单价
          id:12,
          img: "",
          num:0
        },
        {
          name: "男装 Plaid Mode 短袖T恤", //产品名称
          size: "黑色 M", //规格
          price: 800, //单价
          id:20,
          img: "",
          num:0
        },
      ],
      
      number: 4,
      allPrice: 0,
    };
  },

  methods: {
    handleChange(value){
      console.log(value)
    },
    handleOneChange(value) {
            let a = 0;
            value.filter((it, id) => {
                if (it == this.products[id].name) {
                    if (this.products[id].OnePrice) {
                        a += this.products[id].OnePrice;
                    }
                }
            });
            this.allPrice = a;
        },
        handleChangeNum(val) {
            this.products.filter((it, id) => {
                if (it.id == val) {
                    it.OnePrice = it.num * it.price;
                }
            });
            this.getAllPrice();
        },
        getAllPrice() {
            //获取总价方法封装
            let money = 0;
            this.products.filter((it, id) => {
                if (it.OnePrice) {
                    money += it.OnePrice;
                }
            });
            this.allPrice = money;
    },

    submitBtn() {
            this.$alert( this.allPrice+"元", "所有商品总计",{
                confirmButtonText: "确定",
                callback: action => {
                    this.$message({
                        type: "info",
                        message: "哈哈哈"
                    });
                }
            });
        },
    
    clear1(){
      
    },
    
  },
};
</script>

