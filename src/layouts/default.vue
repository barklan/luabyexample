<script setup lang="ts">
import { isDark, toggleDark } from '~/composables'

const { t, availableLocales, locale } = useI18n()
const title = useRouter().currentRoute.value.meta.title

const toggleLocales = () => {
  // change to some real logic
  const locales = availableLocales
  locale.value = locales[(locales.indexOf(locale.value) + 1) % locales.length]
}

window.scrollTo(0,0);

</script>

<template>
  <main class="px-4 py-10 max-w-screen-sm m-auto text-gray-700 dark:text-gray-200">
    <div class="flex grid grid-cols-4 grid-rows-1 gap-1">
      <div class="mb-8 mt-0 col-span-3">
        <h3 class="text-xl pl-3">
          <span class="">
            <router-link class="link" to="/" :title="t('button.home')"><a>Lua by Example</a></router-link>
          </span> / {{ title }}
        </h3>
      </div>
      <nav class="text-xl mt-1 text-true-gray-400 col-span-1 text-right">
        <button
          class="icon-btn mx-2 !outline-none"
          :title="t('button.toggle_dark')"
          @click="toggleDark()"
        >
          <carbon-moon v-if="isDark" />
          <carbon-sun v-else />
        </button>

        <!-- <a class="icon-btn mx-2" :title="t('button.toggle_langs')" @click="toggleLocales">
          <carbon-language />
        </a>-->

        <a
          class="icon-btn mx-2"
          rel="noreferrer"
          href="https://github.com/barklan/luabyexample"
          target="_blank"
          title="GitHub"
        >
          <carbon-logo-github />
        </a>
      </nav>
    </div>
    <router-view class="text-left max-w-screen-sm m-auto" />
  </main>
</template>
