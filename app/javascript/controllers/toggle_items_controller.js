import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-items"
export default class extends Controller {
  static targets = ["item"]

  connect() {
    console.log("test")
  }

  check() {
    // this.backTarget.innerText = "Bingo!"
    console.log(this.itemTarget.innerHTML);
    console.log("test2");

  }
}
