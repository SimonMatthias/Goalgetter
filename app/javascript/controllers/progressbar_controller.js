import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progressbar"
export default class extends Controller {
  static targets =['check', 'bar', 'btnValue', 'quarterly', 'numeric']
  static classes = ['progress-small']

  connect() {
    console.log(this.numericTarget.innerHTML)
  }

  changeHeight () {
    console.log("hello again?")
    if (this.checkTarget.checked == true && this.btnValueTarget.innerHTML == this.quarterlyTarget.innerHTML) {
    this.barTarget.style.height = "40%"
    this.numericTarget.innerHTML += (1);
    }
    else if (this.checkTarget.checked == false && this.btnValueTarget.innerHTML == this.quarterlyTarget.innerHTML) {
    this.barTarget.style.height = "10%";
    this.numericTarget.innerHTML -= (1);
    }

}
}
