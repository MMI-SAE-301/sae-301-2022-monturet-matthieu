<script setup lang="ts">
import Google from '@/components/icons/Google.vue'
import Facebook from '@/components/icons/Facebook.vue'
import { supabase, user } from '@/supabase'
import { ref } from 'vue'
import { useRouter } from "vue-router"

const router = useRouter()
const newUser = ref(false)

// @ts-ignore
async function signUp(data, node) {
  const { user, error } = await (newUser.value
    ? supabase.auth.signUp(data)
    : supabase.auth.signIn(data));
  if (error) {
    console.error(error);
    node.setErrors([error.message]);
  } else {
    router.push("/montre");
  }
}

async function loginGoogle(){ 
    try { 
        const { user, session, error } = await supabase.auth.signIn({ 
        provider: 'google', 
        }); 
        if (error) throw error; 
    } catch (error) { 
        // @ts-ignore
        alert(error.error_description || error.message); 
    }  
}

async function loginFacebook(){ 
    try { 
        const { user, session, error } = await supabase.auth.signIn({ 
        provider: 'facebook', 
        }); 
        if (error) throw error; 
    } catch (error) { 
        // @ts-ignore
        alert(error.error_description || error.message); 
    }  
}

</script>

<template>
    <div class="bg-Blanc flex flex-col items-center space-y-8 border-2 border-Noir min-w-max mx-16 sm:mx-32 xl:mx-96 my-16 drop-shadow-2xl rounded-default">
        <h2 class="heading pt-8">Mon compte</h2>
        <FormKit 
            type="form" 
            :value="{
            name: '',
            firstname: '',
            email: '',
            password: '',
            }"
            @submit="signUp"
            :submit-label="newUser ? 'Créer mon compte' : 'Se connecter'"
            :config="{
                classes:{
                    input: 'input flex justify-center',
                    label: 'button',
                    form: 'flex flex-col gap-8',
                }
            }"
            :submit-attrs="{
                classes: {
                input: 'submit-button font-poppins ml-4 sm:ml-24',
                },
            }"
        >
            <FormKit name="name"        label="Nom *"                   type="text"     placeholder="Votre nom"             validation="required" />
            <FormKit name="firstname"   label="Prénom *"                type="text"     placeholder="Votre prénom"          validation="required" />
            <FormKit name="email"       label="Email *"                 type="email"    placeholder="Votre email"           validation="required|email" />
            <FormKit name="password"    label="Mot de passe *"          type="password" placeholder="Votre mot de passe"    validation="required|length:8,50" />
            <FormKit
                :config="{
                    classes: {
                        label: 'text items-center'
                    },
                }"
                name="newUser"
                label="Nouvel utilisateur ?"
                type="checkbox"
                v-model="newUser"
                validation="required"
                wrapper-class="flex items-center gap-2" />
        </FormKit>
        <div>
            <div class="flex flex-row justify-center mb-8 gap-4">
                <span class="w-32 border-b-2 mb-3 border-Noir border-opacity-50"></span>
                <p class="font-poppins text-lg">OU</p>
                <span class="w-32 border-b-2 mb-3 border-Noir border-opacity-50"></span>
            </div>
            
            <div class="flex flex-col gap-8 mb-12 justify-center">
                <button class="submit-button flex flex-col items-center bg-Blanc text-Noir border-2 border-Noir" @click="loginGoogle()">Continuer avec Google <Google class="w-10 h-10" /></button>
                <button class="submit-button flex flex-col items-center bg-Blanc text-Noir border-2 border-Noir gap-1" @click="loginFacebook()">Continuer avec Facebook <Facebook class="w-8 h-8" /></button>
            </div>
        </div>
    </div>
</template>