import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progressbar"
export default class extends Controller {
  static targets =['check', 'bar', 'btnValue', 'quarterly', 'numeric']
  static classes = ['progress-small']

  connect() {
  }



  changeHeight () {
    // console.log(this.numericTarget.innerHTML)
    var numeric = parseFloat(this.numericTarget.innerHTML)
    // console.log(numeric)

    if (this.checkTarget.checked == true && this.btnValueTarget.innerHTML == this.quarterlyTarget.innerHTML) {
    this.barTarget.style.height =  parseFloat(this.barTarget.dataset.height) + 10 + '%'
    this.barTarget.dataset.height =  parseFloat(this.barTarget.dataset.height) + 10
    // numeric +*;
    }
    else if (this.checkTarget.checked == false && this.btnValueTarget.innerHTML == this.quarterlyTarget.innerHTML) {
    this.barTarget.style.height =  parseFloat(this.barTarget.dataset.height) - 10 + '%'
    this.barTarget.dataset.height =  parseFloat(this.barTarget.dataset.height) - 10
    // console.log("else")
    numeric --;
    // console.log (numeric, "ey")
    this.numericTarget.textContent = numeric

    }

  }

}
