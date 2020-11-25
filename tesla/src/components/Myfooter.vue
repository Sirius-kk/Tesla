<template>
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
                      >常见问题</el-link
                    >
                  </div>
                  <div class="c2">|</div>
                  <div class="c2">
                    <el-link
                      href="https://element.eleme.io"
                      target="_blank"
                      :underline="false"
                      >关于Tesla账号隐私的说明</el-link
                    >
                  </div>
                </div>
              </div>
            </div></el-col
          >
        </el-row>
      </div>
    </div>
</template>
<style scoped>
.c1 {
  width: 100%;
  height: 50px;
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
  text-align: center;
  padding: 10px;
  margin: 7px auto;
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