import consumer from "./consumer"

consumer.subscriptions.create("ProductsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("[ActionCable] Connected to ProductsChannel");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("[ActionCable] Disconnected from ProductsChannel");
  },

  received(data) {
    console.log("Received:", data)
    // Called when there's incoming data on the websocket for this channel
    const storeElement = document.querySelector("main.stores")
    if (storeElement) {
      storeElement.innerHTML = data.html
    }
  }
});
