import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="link"
export default class extends Controller {
  static targets = ["linkTo"]

  connect() {
    const linkToArray = this.linkToTargets

    linkToArray.forEach(linkTo => {
      if (window.location.pathname !== linkTo.pathname) {
        linkTo.classList.remove("hidden")
    }
    })
  };
};
