<script setup lang="ts">
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import Logo from '@/components/icons/Logo.vue'
import LightMode from '@/components/icons/LightMode.vue'
import DarkMode from '@/components/icons/DarkMode.vue'
import FormMontre from '@/components/FormMontre.vue'
</script>

<template>
    <section class="bg-Blanc light:bg-Noir">
        <div class="md:hidden">
            <Header />
        </div>

        <div class="hidden flex-row items-center justify-between gap-4 md:flex button">
            <div class="flex space-x-4 ml-7">
                <Logo class="h-10 w-24 fill-Noir light:fill-Blanc" />
                <LightMode class="h-10 w-6 light:hidden" />
                <DarkMode class="h-10 w-6 dark:hidden" />
            </div>
            <div class="flex flex-row gap-12 mr-7">
                <RouterLink to="/Montre/" class="w-fit">
                    <p class="w-fit light:text-Blanc text-Noir">La SmartWatch</p>
                </RouterLink>
                
                <RouterLink to="/Montre/new" class="w-fit  border-b-4 light:border-Jaune border-Bleu">
                    <p class="w-fit light:text-Blanc text-Noir">Personnaliser</p>
                </RouterLink>
                
                <RouterLink to="/" class="w-fit">
                    <p class="w-fit light:text-Blanc text-Noir">Mon compte</p>
                </RouterLink>
            </div>
        </div>
    </section>

    <FormMontre />

    <Footer class="mt-32" />
</template>