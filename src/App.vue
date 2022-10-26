<template>
  <!-- Affiche les pages -->
  <Suspense>
    <router-view />
  </Suspense>
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>
