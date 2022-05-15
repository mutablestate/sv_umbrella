import { writable } from "svelte/store";

export const connectionStatus = writable<"offline" | "online">("offline");
