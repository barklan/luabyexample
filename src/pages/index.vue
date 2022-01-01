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
        <router-link class="link mx-2" to="/variables">Variables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/numbers">Numbers</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/strings">Strings</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/ifelse">If/Else</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/whilefor">While/For</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/functions">Functions</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/tables">Tables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/keytables">Key Tables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/metatables">Meta Tables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/tablesort">Sorting Tables</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/varfuncs">Variadic Functions</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/scope">Variable Scope</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/stringfunc">String Functions</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/gmatch">Pattern Matching</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/math">Math</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/random">Random Numbers</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/time">Time</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/files">File IO</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/walk">Walk a Directory</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/modules">Modules</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/coroutines">Coroutines</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/oop">Object Oriented Programming</router-link>
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
        <router-link
          class="link mx-2"
          to="/luarocks"
          :title="t('button.about')"
        >LuaRocks (package manager)</router-link>
      </li>
      <li>
        <router-link class="link mx-2" to="/docker" :title="t('button.about')">Docker</router-link>
      </li>
      <li>
        <router-link
          class="link mx-2"
          to="/embedding"
          :title="t('button.about')"
        >Embedding in other languages</router-link>
      </li>
    </ul>
  </div>
</template>

<route lang="yaml">
meta:
  layout: home
</route>
