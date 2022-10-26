<script setup lang="ts">
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import Logo from '@/components/icons/Logo.vue'
import LightMode from '@/components/icons/LightMode.vue'

</script>

<template>
    <section class="light:bg-Blanc bg-Noir">
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
                
                <RouterLink to="/" class="w-fit">
                    <p class="w-fit">Mon compte</p>
                </RouterLink>
            </div>
        </div>
    </section>

    <div class="flex flex-col xl:flex-row xl:my-20 items-center">
        <div class="flex flex-col my-4 mx-4 sm:mx-12 xl:mx-20 2xl:mx-32">
            <div class="flex flex-col">
                <div class="flex flex-col gap-12 mb-16">
                    <h2 class="heading text-center md:text-start">La SmartWatch, une valeur sûre</h2>
                    <div class="flex flex-col">
                        <p class="text">Pensée pour être portée par tous, cette montre polyvalente saura s’adapter à tous vos besoins !</p><br/> 
                        <p class="text">Son design ergonomique et ses fonctionnalités innovantes telles que la recharge par induction, le partage de données depuis votre montre jusqu’à vos autres appareils numériques et bien d’autres encore !</p>
                    </div>
                </div>
            </div>

            <div class="flex flex-col">
                <div class="flex flex-col gap-12 mb-16">
                    <h2 class="heading text-center md:text-start">Personnalisez votre montre à votre guise</h2>
                    <div class="flex flex-col">
                        <p class="text">Chaque montre est en outre unique : le modèle ci-contre est un exemple provenant d’un de nos précédents clients, alors n’hésitez plus et personnalisez la vôtre dès à présent !</p><br/> 
                        <p class="text">Peut-être qu’à votre prochaine visite, le modèle présenté sera le vôtre...</p>
                    </div>
                </div>
            </div>

            <div class="flex flex-col">
                <div class="flex flex-col gap-12 mb-16">
                    <h2 class="heading text-center md:text-start">Deux modèles pour deux fois plus de possibilités</h2>
                    <div class="flex flex-col">
                        <p class="text">Nous disposons actuellement de deux modèles de montre différents, afin de répondre aux demandes de tous. Retrouvez la montre sous ses formes les plus populaires, les cadres rond et rectangulaire.</p><br/> 
                        <p class="text">Lors de la personnalisation, les combinaisons sont donc décuplées puisque vous pouvez créer deux modèles uniques en une seule fois !</p>
                    </div>
                </div>
            </div>
        </div>
        
        <img class="w-fit light:hidden mr-12 sm:mr-20 xl:mr-32" src="@/assets/MontresBlanches.webp" alt="Image de montres personnalisées">
        <img class="w-fit dark:hidden mr-12 sm:mr-20 xl:mr-32" src="@/assets/MontresNoires.webp" alt="Image de montres personnalisées">
    </div>

    <div class="flex flex-col items-center gap-4 mb-32">
        <h2 class="heading mx-4 text-center">Personnalisez votre montre dès maintenant !</h2>
        <button class="submit-button mx-4">Personnaliser ma montre</button>
    </div>
    <Footer />
</template>