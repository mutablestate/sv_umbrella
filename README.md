# Svelte Umbrella

An example application using Svelte TypeScript and Tailwindcss within a Phoenix Umbrella.

## Stack Communication

- `phoenix_gon`: pass variables from controllers down to JS (requires fork to compile with modern Phoenix HTML)
- `Phoenix channels`: pass messages back and forth over websockets
