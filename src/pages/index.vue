<script setup lang="ts">
const { t } = useI18n()
</script>

<template>
  <div>
    <p>
      <em class="text-sm opacity-75">{{ t('intro.desc') }}</em>
    </p>

    <div class="py-4" />

    <ul class="pl-3">
      <li>
        <router-link class="link mx-2" to="/hello-world" :title="t('button.about')">Hello World</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/variables" :title="t('button.about')">Variables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/numbers" :title="t('button.about')">Numbers</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/strings" :title="t('button.about')">Strings</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/ifelse" :title="t('button.about')">If/Else</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/whilefor" :title="t('button.about')">While/For</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/tables" :title="t('button.about')">Tables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/keytables" :title="t('button.about')">Key Tables</router-link>
      </li>
    </ul>
  </div>
</template>

<route lang="yaml">
meta:
  layout: home
</route>
