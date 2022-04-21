import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  open() {
    document.querySelector('#offcanvas').classList.remove('hidden')
  }
  close() {
    document.querySelector('#offcanvas').classList.add('hidden')
  }
}