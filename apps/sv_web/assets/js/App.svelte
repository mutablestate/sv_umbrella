<script lang="ts">
  let welcome: string = "Hey Svelte!";
</script>

<div class="welcome">
  {welcome}
</div>

<style lang="postcss">
  .welcome {
    @apply text-salmon text-center text-2xl;
  }
</style>
