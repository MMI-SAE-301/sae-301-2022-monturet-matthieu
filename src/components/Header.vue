<script setup lang="ts">
import Logo from "@/components/icons/Logo.vue";
import LightMode from "@/components/icons/LightMode.vue";
import DarkMode from "@/components/icons/DarkMode.vue";
import { Bars3Icon } from "@heroicons/vue/20/solid";

const props = defineProps({
  menuState: { type: Boolean, default: false },
});
</script>

<template>
  <div class="flex justify-between">
    <div class="flex items-center h-12 space-x-3 ml-4">
      <Logo class="h-10 w-24 fill-Blanc light:fill-Noir" />
      <LightMode class="h-10 w-6 dark:hidden"/>
      <DarkMode class="h-10 w-6 light:hidden"/>
    </div>
    <!--Menu du header : MOBILE -->
    <div class="flex items-center mr-4 md:hidden">
      <button @click="menuState = !menuState">
        <Bars3Icon class="h-10 w-8 fill-Blanc light:fill-Noir" />
      </button>
    </div>
  </div>

  <!--Menu du header : CONTENU DU MENU MOBILE -->
  <section :class="{ hidden: menuState }" class="block w-full bg-Bleu text-Blanc md:hidden">
    <div class="flex flex-col items-center justify-center gap-6 p-4 text-lg font-poppins">
      <RouterLink to="/Montre/" class="w-fit p-2 border-2 rounded-md" @click="menuState = !menuState">
        <p class="w-fit">La SmartWatch</p>
      </RouterLink>
      
      <RouterLink to="/Montre/new" class="w-fit px-4 py-2 border-2 rounded-md" @click="menuState = !menuState">
        <p class="w-fit">Personnaliser</p>
      </RouterLink>
      
      <RouterLink to="/" class="w-fit px-5 py-2 border-2 rounded-md" @click="menuState = !menuState">
        <p class="w-fit">Mon compte</p>
      </RouterLink>
    </div>
  </section>
</template>