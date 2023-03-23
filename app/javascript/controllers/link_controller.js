import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="link"
export default class extends Controller {
  static targets = ["linkTo"]

  connect() {
    // console.log(window.location.pathname)
    // console.log(this.linkToTargets)
    // console.log(window.location.pathname)
  };

  changeLink (){
    const linkToArray = this.linkToTargets

    linkToArray.forEach(linkTo => {
      if (window.location.pathname !== linkTo.pathname) {
        linkTo.classList.remove("hidden")
        // window.location.reload()

        console.log("hoi")
      // linkTo.classList.remove("hidden")
    }
    })
    // linkToArray.forEach(linkTo => {

    //   console.log(linkTo.pathname)
    //   if (window.location.pathname == linkTo.pathname){
    //     linkTo.classList.add("hidden")
    //     console.log("hi")
    //   }
    //   else if (window.location.pathname !== linkTo.pathname) {
    //     linkTo.classList.remove("hidden")
    //     console.log("hoi")

    //   }
    // });
  };
}
