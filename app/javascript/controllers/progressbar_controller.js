import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progressbar"
export default class extends Controller {
  static targets =['check', 'btnValue', 'bar', 'numeric', 'progressSmall']

  connect() {
  }

  changeHeight () {
    var numeric = this.numericTarget.innerHTML
    var checked = this.checkTarget.checked
    var btnValue = this.btnValueTarget.innerHTML
    var bar = this.barTarget
    var barId = this.barTarget.id

    console.log(checked, btnValue, barId)
    console.log(this.progressSmallTargets)

    if ((checked == true) && (btnValue == this.barTarget.id)) {
      this.barTarget.style.height =  parseFloat(this.barTarget.dataset.height) + 10 + '%'
      this.barTarget.dataset.height =  parseFloat(this.barTarget.dataset.height) + 10

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
