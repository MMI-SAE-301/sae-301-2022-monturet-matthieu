<script setup lang="ts">
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import Logo from '@/components/icons/Logo.vue'
import LightMode from '@/components/icons/LightMode.vue'
import DarkMode from '@/components/icons/DarkMode.vue'

</script>

<template>
    <section class="bg-Blanc light:bg-Noir">
        <div class="md:hidden">
            <Header />
        </div>

        <div class="hidden flex-row items-center justify-between gap-4 md:flex button">
            <div class="flex space-x-4 ml-7">
                <Logo class="h-10 w-24 fill-Noir light:fill-Blanc" />
                <span class="sr-only">Logo du site</span>
                <LightMode class="h-10 w-6 light:hidden" />
                <span class="sr-only">Bouton du mode jour</span>
                <DarkMode class="h-10 w-6 dark:hidden" />
                <span class="sr-only">Bouton du mode nuit</span>
            </div>
            <div class="flex flex-row gap-12 mr-7">
                <RouterLink to="/Montre/" class="w-fit border-b-4 light:border-Jaune border-Bleu">
                    <p class="w-fit light:text-Blanc text-Noir">La SmartWatch</p>
                </RouterLink>
                <span class="sr-only">Lien vers la page La SmartWatch</span>
                
                <RouterLink to="/Montre/new" class="w-fit">
                    <p class="w-fit light:text-Blanc text-Noir">Personnaliser</p>
                </RouterLink>
                <span class="sr-only">Lien vers la page Personnaliser</span>
                
                <RouterLink to="/" class="w-fit">
                    <p class="w-fit light:text-Blanc text-Noir">Mon compte</p>
                </RouterLink>
                <span class="sr-only">Lien vers la page Mon compte</span>
            </div>
        </div>
    </section>

    <div class="flex flex-col xl:flex-row xl:my-20 items-center text-Blanc light:text-Noir">
        <div class="flex flex-col my-4 mx-4 sm:mx-12 xl:mx-20 2xl:mx-32">
            <div class="flex flex-col">
                <div class="flex flex-col gap-12 mb-16">
                    <h2 class="heading text-center md:text-start">La SmartWatch, une valeur s??re</h2>
                    <div class="flex flex-col">
                        <p class="text">Pens??e pour ??tre port??e par tous, cette montre polyvalente saura s???adapter ?? tous vos besoins !</p><br/> 
                        <p class="text">Son design ergonomique et ses fonctionnalit??s innovantes telles que la recharge par induction, le partage de donn??es depuis votre montre jusqu????? vos autres appareils num??riques et bien d???autres encore !</p>
                    </div>
                </div>
            </div>

            <div class="flex flex-col">
                <div class="flex flex-col gap-12 mb-16">
                    <h2 class="heading text-center md:text-start">Personnalisez votre montre ?? votre guise</h2>
                    <div class="flex flex-col">
                        <p class="text">Chaque montre est en outre unique : le mod??le ci-contre est un exemple provenant d???un de nos pr??c??dents clients, alors n???h??sitez plus et personnalisez la v??tre d??s ?? pr??sent !</p><br/> 
                        <p class="text">Peut-??tre qu????? votre prochaine visite, le mod??le pr??sent?? sera le v??tre...</p>
                    </div>
                </div>
            </div>

            <div class="flex flex-col">
                <div class="flex flex-col gap-12 mb-16">
                    <h2 class="heading text-center md:text-start">Deux mod??les pour deux fois plus de possibilit??s</h2>
                    <div class="flex flex-col">
                        <p class="text">Nous disposons actuellement de deux mod??les de montre diff??rents, afin de r??pondre aux demandes de tous. Retrouvez la montre sous ses formes les plus populaires, les cadres rond et rectangulaire.</p><br/> 
                        <p class="text">Lors de la personnalisation, les combinaisons sont donc d??cupl??es puisque vous pouvez cr??er deux mod??les uniques en une seule fois !</p>
                    </div>
                </div>
            </div>
        </div>
        
        <img class="w-fit light:hidden mr-12 sm:mr-20 xl:mr-32" src="@/assets/MontresBlanches.webp" alt="Image de montres personnalis??es">
        <img class="w-fit dark:hidden mr-12 sm:mr-20 xl:mr-32" src="@/assets/MontresNoires.webp" alt="Image de montres personnalis??es">
    </div>

    <div class="flex flex-col items-center gap-4 mb-32 text-Blanc light:text-Noir">
        <h2 class="heading mx-4 text-center">Personnalisez votre montre d??s maintenant !</h2>
        <RouterLink to="/Montre/new">
        <button class="submit-button mx-4">Personnaliser ma montre</button>
        </RouterLink>
    </div>
    <Footer />
</template>