import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progressbar"
export default class extends Controller {
  static targets =['check', 'bar', 'btnValue', 'quarterly', 'numeric', 'topNumber']

  connect() {
  }



  changeHeight () {
    var numeric = parseFloat(this.numericTarget.innerHTML)
    var numericTotal= parseFloat(this.topNumberTarget.textContent)
    // console.log(numericTotal, "aha")

    if (this.checkTarget.checked == true && this.btnValueTarget.innerHTML == this.quarterlyTarget.innerHTML) {
      this.barTarget.style.height =  parseFloat(this.barTarget.dataset.height) + 10 + '%'
      this.barTarget.dataset.height =  parseFloat(this.barTarget.dataset.height) + 10
      numeric ++;
      this.numericTarget.textContent = numeric
      numericTotal ++;
      this.topNumberTarget.textContent = numericTotal
    }
    else if (this.checkTarget.checked == false && this.btnValueTarget.innerHTML == this.quarterlyTarget.innerHTML) {
      this.barTarget.style.height =  parseFloat(this.barTarget.dataset.height) - 10 + '%'
      this.barTarget.dataset.height =  parseFloat(this.barTarget.dataset.height) - 10
      // console.log("else")
      numeric --;
      this.numericTarget.textContent = numeric

      numericTotal --
      this.topNumberTarget.textContent = numericTotal
    }

  }

}
