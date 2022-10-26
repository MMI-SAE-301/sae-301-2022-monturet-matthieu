<script setup lang="ts">
import Logo from '@/components/icons/Logo.vue'
import LightMode from '@/components/icons/LightMode.vue'
import Footer from '@/components/Footer.vue'
import AuthForm from '@/components/AuthForm.vue'

</script>

<template>
    <section class="bg-Blanc dark:bg-Noir">
        <div class="flex flex-row items-center sm:justify-between justify-center gap-4 button">
            <div class="flex space-x-4 ml-7">
                <Logo class="h-10 w-24 fill-Noir dark:fill-Blanc" />
                <LightMode class="h-10 w-6"/>
            </div>
        </div>
    </section>
    <section class="">
        <AuthForm />
        <Footer />
    </section>
</template>