<script setup lang="ts">
import MontreRondeBlanche from '@/components/MontreRondeBlanche.vue'
import MontreCarreeBlanche from '@/components/MontreCarreeBlanche.vue'
import MontreRondeNoire from '@/components/MontreRondeNoire.vue'
import MontreCarreeNoire from '@/components/MontreCarreeNoire.vue'
import ListColors from '@/components/ListColors.vue'
import ListNuances from '@/components/ListNuances.vue'
import ListMateriaux from '@/components/ListMateriaux.vue'
import type { Montre } from '@/types'
import { ref } from 'vue'
import { supabase } from '@/supabase'
import { useRouter } from "vue-router"
const router = useRouter()

const MontreRonde = ref(true);
const MontreCarree = ref(false);

const props = defineProps<{
  data?: Montre;
  id?: string;
}>();

const montre = ref<Montre>(props.data ?? {});

if (props.id) {
  let { data, error } = await supabase
    .from("Montre")
    .select("*")
    .eq("id_montre", props.id);
  if (error || !data)
    console.log("n'a pas pu charger la table Montre :", error);
  else montre.value = data[0];
}

// @ts-ignore
async function upsertMontre(dataForm, node) {
  const { data, error } = await supabase.from("Montre").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push({ name: "montre-edit-id", params: { id: data[0].id } });
  }
}
</script>

<template>
    <div class="flex flex-col xl:flex-row justify-center gap-16 text-Blanc light:text-Noir">
        <div class="mt-60">
            <FormKit 
                type="form" 
                v-model="montre" 
                @submit="upsertMontre"
                submit-label="Valider les changements"
                :config="{
                    classes:{
                        fieldset: 'flex justify-center heading space-y-6 mb-16',
                    }
                }"
                :submit-attrs="{
                    classes: {
                    input: 'submit-button mt-20',
                    },
            }"
            >
                <ListNuances name="ecran" label="Écran" />
                <ListColors name="boitier" label="Boitier" />
                <ListColors name="bracelet" label="Bracelet" />

                <ListMateriaux name="boitier" label="Matériaux : Boitier" />
                <ListMateriaux name="bracelet" label="Matériaux : Bracelet" />
            </FormKit>
        </div>
        <div class="dark:hidden ml-32 xl:ml-4">
            <div class="w-96 flex">
                <MontreRondeBlanche :class="{hidden: MontreCarree}" class="mt-12" v-bind="montre" />
                <MontreCarreeBlanche :class="{hidden: MontreRonde}" class="mt-12" v-bind="montre" />
            </div>
            <button @click="(MontreRonde = true), (MontreCarree = false)">
                <img class="mt-12 mr-8 ml-32" src="@/assets/Flèche jaune inverse.webp" alt="">
            </button>
            <button @click="(MontreCarree = true), (MontreRonde = false)">
                <img src="@/assets/Flèche jaune.webp" alt="">
            </button>
        </div>

        <div class="light:hidden ml-32 xl:ml-4 xl:mt-12">
            <div class="flex flex-row">
                <MontreRondeNoire :class="{hidden: MontreCarree}" class="mt-12" v-bind="montre" />
                <MontreCarreeNoire :class="{hidden: MontreRonde}" class="mt-12" v-bind="montre" />
            </div>

            <button @click="(MontreRonde = true), (MontreCarree = false)">
                <img class="mt-12 mr-8 ml-32" src="@/assets/Flèche jaune inverse.webp" alt="">
            </button>
            
            <button @click="(MontreCarree = true), (MontreRonde = false)">
                <img src="@/assets/Flèche jaune.webp" alt="">
            </button>
        </div>
    </div>
</template>