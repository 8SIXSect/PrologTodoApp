import { createApp } from 'vue';
import App from './App.vue';
import axios from 'axios';
import './index.css';

const app = createApp(App);
app.provide("$http", axios);
app.mount('#app');

