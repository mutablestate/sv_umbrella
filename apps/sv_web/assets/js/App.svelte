<script lang="ts">
  let { isAuthed } = window.Gon.assets();
  let welcome: string = "Hey Svelte!";
</script>

<header>
  <h1 class="welcome">{welcome} @apply in style tag</h1>
</header>

{#if isAuthed}
  <main class="text-center">Welcome Back!</main>
{:else}
  <main class="text-center">Unauthorized</main>
{/if}

<footer>@apply in external css</footer>

<style lang="postcss">
  header {
    @apply m-4;
  }
  .welcome {
    @apply text-center text-salmon;
  }
</style>
