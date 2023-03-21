import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progressbar"
export default class extends Controller {
  static targets =['check', 'bar', 'btnValue', 'numeric',]

  connect() {
  }

  changeHeight () {
    var numeric = this.numericTarget.innerHTML
    var checked = this.checkTarget.checked
    var btnValue = this.btnValueTarget.innerHTML
    var bar = this.barTarget
    var barId = this.barTarget.id

    if (boxCheck == true && barId  == btnValue) {
      if (bar.dataset.height <= 90 && bar.dataset.height <= 90) {
        bar.style.height =  heightFloat + 10 + '%'
        heightFloat=  parseFloat(heightFloat) + 10
      }
      if (numeric <= 12) {
        numeric ++;
        this.numericTarget.textContent = numeric
      }
    }
    else if (checked == false && btnValue == barId) {
      bar.style.height =  parseFloat(bar.dataset.height) - 10 + '%'
      bar.dataset.height =  parseFloat(bar.dataset.height) - 10
      if (numeric >= 1){
        numeric --;
        this.numericTarget.textContent = numeric
      }
    }
  }
}
