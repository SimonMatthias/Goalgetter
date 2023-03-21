import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="dashboard-numeric"
export default class extends Controller {
  static targets =['check1','topNumber']

  connect() {
    console.log(this.check1Targets)
  }


  changeNumber() {
    var topNumeric= parseFloat(this.topNumberTarget.textContent)

    // console.log(this.check1Targets)

    this.check1Targets.forEach((check1) => {
    if (this.check1Target.checked == true && topNumeric <= 99){
        topNumeric ++;
        this.topNumberTarget.textContent = topNumeric
      }
    else if (this.check1Target.checked == false && (topNumeric >= 1)) {
      console.log("hi")
        topNumeric --;
        this.topNumberTarget.textContent = topNumeric
    }
    })
}
}
