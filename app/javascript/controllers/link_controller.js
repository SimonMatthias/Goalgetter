import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="link"
export default class extends Controller {
  static targets = ["linkTo","linkTo1","linkTo2","linkTo3","linkTo4","linkTo5" ]



  connect() {
    // console.log('hi')
  }

  changeLink (){
    console.log(this.linkToTarget1.href)

    console.log('The page has fully loaded');
  };
  }
