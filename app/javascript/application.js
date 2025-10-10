// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./channels"
// React aur ReactDOM import karo
// React aur ReactDOM import karo
// app/javascript/application.js
console.log("hhhh")
import React from "react";
import ReactDOM from "react-dom/client";

// Simple React component
function HelloReact() {
  return <h1>Hello React!</h1>;
}

// DOMContentLoaded ke baad mount karna
document.addEventListener("DOMContentLoaded", () => {
  const rootDiv = document.getElementById("react_hello");
  if (rootDiv) {
    const root = ReactDOM.createRoot(rootDiv);
    root.render(<HelloReact />);
  }
});
const rootDiv = document.getElementById("react_hello");
console.log(rootDiv)