<script lang="ts">
  import ChatRoom from "@/views/ChatRoom.svelte";

  let { isAuthed } = window.Gon.assets();
  let welcome: string = "Hey Svelte!";
</script>

<header>
  <h1 class="welcome">{welcome}</h1>
</header>

{#if isAuthed}
  <main class="text-center">Welcome Back!</main>
{:else}
  <main class="text-center">Unauthorized</main>
{/if}
<ChatRoom />

<footer>@mutablestate</footer>

<style lang="postcss">
  header {
    @apply m-4;
  }
  .welcome {
    @apply text-center text-salmon;
  }
</style>
