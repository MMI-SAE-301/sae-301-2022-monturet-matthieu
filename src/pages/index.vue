<script setup lang="ts">
import Logo from '@/components/icons/Logo.vue'
import LightMode from '@/components/icons/LightMode.vue'
import DarkMode from '@/components/icons/DarkMode.vue'
import Footer from '@/components/Footer.vue'
import AuthForm from '@/components/AuthForm.vue'

</script>

<template>
    <section class="light:bg-Blanc bg-Noir">
        <div class="flex flex-row items-center sm:justify-between justify-center gap-4 button">
            <div class="flex space-x-4 ml-7">
                <Logo class="h-10 w-24 light:fill-Noir fill-Blanc" />
                <LightMode class="h-10 w-6 dark:hidden" />
                <DarkMode class="h-10 w-6 light:hidden" />
            </div>
        </div>
    </section>

    <section>
        <AuthForm />
        <Footer />
    </section>
</template>