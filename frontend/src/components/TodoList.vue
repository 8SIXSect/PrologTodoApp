<script setup>
import { ref } from 'vue';


let tasks = ref(["this"]);
document.addEventListener("DOMContentLoaded", async function() {
    const response = await fetch("http://localhost:8000/api", {
        method: 'POST',
        headers: {
            'Content-Type': 'text/plain',
        },
        body: JSON.stringify({
            name: "hello"
        })
    });
    console.log(response);
});

</script>

<template>
    <ul class="text-white">
        <li class="p-8 bg-emerald-500 flex items-center">
            <p class="text-4xl font-semibold grow">Task 1</p>
            <span class="flex">
                <div class="bg-green-600 w-16 h-16 flex items-center justify-center">
                    <img src="@/assets/edit.png" alt="Edit" class="h-8 w-8 invert hover:invert-0"/>
                </div>
                <div class="bg-red-600 w-16 h-16 flex items-center justify-center">
                    <img src="@/assets/delete.png" alt="Delete" class="h-8 w-8 invert hover:invert-0"/>
                </div>
            </span>
        </li>
        <li v-for="task in tasks" :key="task" class="text-black">{{ task }}</li>
    </ul>
</template>

