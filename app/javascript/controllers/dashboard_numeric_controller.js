import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="dashboard-numeric"
export default class extends Controller {
  static targets =['check1','topNumber']

  connect() {
  }

  changeNumber() {
  var topNumeric= parseFloat(this.topNumberTarget.textContent)

  if (this.check1Target.checked == true && topNumeric <= 99){
    topNumeric ++;
    this.topNumberTarget.textContent = topNumeric
  }
  else if (this.check1Target.checked == false && (topNumeric >= 1)) {
    topNumeric --;
    this.topNumberTarget.textContent = topNumeric
    }
}
}
