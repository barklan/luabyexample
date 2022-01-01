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
        <router-link class="link mx-2" to="/functions" :title="t('button.about')">Functions</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/tables" :title="t('button.about')">Tables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/keytables" :title="t('button.about')">Key Tables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/metatables" :title="t('button.about')">Meta Tables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/varfuncs" :title="t('button.about')">Variadic Functions</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/scope" :title="t('button.about')">Variable Scope</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/stringfunc" :title="t('button.about')">String Functions</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/math" :title="t('button.about')">Math</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/random" :title="t('button.about')">Random Numbers</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/files" :title="t('button.about')">Files</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/modules" :title="t('button.about')">Modules</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/oop" :title="t('button.about')">Object Oriented Programming</router-link>
      </li>
      <li>
        <router-link
          class="link mx-2"
          to="/envvars"
          :title="t('button.about')"
        >Environment Variables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/execute" :title="t('button.about')">Executing Processes</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/docker" :title="t('button.about')">Docker</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/embedding" :title="t('button.about')">Embedding in other languages</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/luarocks" :title="t('button.about')">LuaRocks (package manager)</router-link>
      </li>
    </ul>
  </div>
</template>

<route lang="yaml">
meta:
  layout: home
</route>
