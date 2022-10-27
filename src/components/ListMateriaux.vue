<script setup lang="ts">
import { materiaux } from "@/types";
defineProps<{
  name?: string;
  label?: string;
}>();
</script>
<template>
  <FormKit
    :name="name"
    :label="label"
    type="radio"
    :options="materiaux"
    :sections-schema="{ inner: { $el: null }, decorator: { $el: null } }"
    input-class="peer sr-only"
    options-class="flex flex-wrap gap-5"
    wrapper-class="my-1"
  >
    <template #label="context">
      <div class="submit-button">
        <p>{{ context.option.label }}</p>
      </div>
    </template>
  </FormKit>
</template>