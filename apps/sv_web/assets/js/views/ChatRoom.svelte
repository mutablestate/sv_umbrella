<script lang="ts">
  import { socket } from "@/userSocket";
  import { connectionStatus } from "@/stores";

  let channel = socket.channel("room:lobby", {});
  let messages: string[] = [];
  let message = "";

  channel.on("new_msg", (payload: { body: string }) => {
    const current = new Date();
    const date = current.toLocaleString();
    messages = [...messages, `${date}: ${payload.body}`];
  });

  channel
    .join()
    .receive("ok", (resp: {}) => {
      console.log("Joined successfully", resp);
    })
    .receive("error", (resp: { reason: string }) => {
      console.log("Unable to join", resp);
    });

  function handlePush() {
    channel.push("new_msg", {
      body: message,
    });
  }
</script>

<section class="text-center my-6">
  <input
    name="message"
    class="px-3 py-2 bg-gray-200 rounded"
    placeholder="Message"
    bind:value={message}
  />
  <button
    type="submit"
    class="px-6 py-2 rounded bg-emerald-400 hover:bg-emerald-500 text-emerald-100"
    on:click={handlePush}
  >
    Send
  </button>
  <div class="mx-auto mt-4 max-w-xs">
    <div class="text-center">Chat Messages ({$connectionStatus})</div>
    {#if messages?.length > 0}
      {#each messages as message}
        <div class="text-gray-500 border-b border-gray-200 py-2">{message}</div>
      {/each}
    {:else}
      <div class="text-gray-500 py-2">No messages sent</div>
    {/if}
  </div>
</section>
