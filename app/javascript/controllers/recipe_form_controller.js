import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recipe-form"

export default class extends Controller {
  connect() {
    // console.log("Connected to Form JS")
  }

  changeForm() {
    const firstPart = document.querySelector("#form-start")
    const secondPart = document.querySelector("#form-next")
    const submitBtn = document.querySelector("#form-submit-btn")
    const formBtn = document.querySelector("#form-next-btn")

    firstPart.classList.toggle("d-none")
    secondPart.classList.toggle("d-none")
    submitBtn.classList.toggle("d-none")

    if (formBtn.innerHTML === "Next") {
      formBtn.innerHTML = "Back"
    } else {
      formBtn.innerHTML = "Next"
    }
  }
}
