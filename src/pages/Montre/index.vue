<script setup lang="ts">
import Header from '@/components/Header.vue'
import Logo from '@/components/icons/Logo.vue'
import LightMode from '@/components/icons/LightMode.vue'

</script>

<template>
    <section class="bg-Blanc dark:bg-Noir">
        <div class="md:hidden">
            <Header />
        </div>

        <div class="hidden flex-row items-center justify-between gap-4 md:flex button">
            <div class="flex space-x-4 ml-7">
                <Logo class="h-10 w-24 fill-Noir dark:fill-Blanc" />
                <LightMode class="h-10 w-6"/>
            </div>
            <div class="flex flex-row gap-12 mr-7">
                <RouterLink to="/Montre/" class="w-fit border-b-4 border-Bleu">
                    <p class="w-fit">La SmartWatch</p>
                </RouterLink>
                
                <RouterLink to="/Montre/new" class="w-fit">
                    <p class="w-fit">Personnaliser</p>
                </RouterLink>
                
                <RouterLink to="/compteview" class="w-fit">
                    <p class="w-fit">Mon compte</p>
                </RouterLink>
            </div>
        </div>
    </section>
</template>