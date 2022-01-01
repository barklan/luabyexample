<script setup lang="ts">
// https://github.com/vueuse/head
// you can use this to manipulate the document head in any components,
// they will be rendered correctly in the html results with vite-ssg
useHead({
  title: 'Lua by Example',
  meta: [
    { name: 'description', content: 'Lua by Example' },
  ],
})
</script>

<template>
  <router-view />
</template>
