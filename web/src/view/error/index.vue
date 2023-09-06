<template>
  <div>
    <div class="w-full h-screen bg-gray-50 flex items-center justify-center">
      <div class="flex flex-col items-center text-2xl gap-4">
        <img src="../../assets/notFound.png">
        <p>页面出错了</p>
        <p>↓</p>
        <img src="../../assets/qm.png" class="w-16 h-16 mt-20">
        <el-button @click="toDashboard">返回首页</el-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Error'
}
</script>

<script setup>
import {useUserStore} from "@/pinia/modules/user";
import {useRouter} from "vue-router";

const userStore = useUserStore()
const router = useRouter()
const toDashboard = () =>{
  router.push({name:userStore.userInfo.authority.defaultRouter})
}
</script>
