<script lang="ts">
  let welcome: string = "Hey Svelte!";
</script>

<header class="welcome">
  {welcome} @apply in style tag
</header>
<main class="text-center">Inline tailwind</main>
<footer>@apply in external css</footer>

<style lang="postcss">
  .welcome {
    @apply text-center text-salmon;
  }
</style>
