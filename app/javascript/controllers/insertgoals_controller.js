import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insertgoals"
export default class extends Controller {
  static targets = ["button", "list"]

 connect() {
 }

  changegoals(event) {
    this.buttonTargets.forEach((button) => {
      button.classList.remove("community-button-blue-selected")
    })
    event.currentTarget.classList.add("community-button-blue-selected")
    this.listTargets.forEach((list) => {
      if (list.id == event.target.id) {
        list.classList.remove("d-none")
      } else {
        list.classList.add("d-none")
      }
    })
  }
}
