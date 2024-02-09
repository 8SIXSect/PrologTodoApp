<script setup>

import TodoList from './TodoList.vue';

</script>

<template>
    <div class="h-96 flex justify-center items-center">
        <div class="flex flex-col w-1/2">
            <h1 class="text-5xl bg-slate-700 text-slate-100 font-bold text-center py-12 rounded-t-lg">Daily Todo Lists</h1>
            <form class="flex border">
                <input type="text" placeholder="Add your todo"
                       class="grow p-4 text-2xl outline-none"/>
                <button role="submit" class="pr-2">
                    <img class="w-12 h-12" src="@/assets/plus.svg" alt="Plus"/>
                </button>
            </form>
            <TodoList />
        </div>
    </div>
</template>

