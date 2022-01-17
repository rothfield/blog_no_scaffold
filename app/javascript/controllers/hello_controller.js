import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }
  greet() {
    console.log(this.element.className)
    this.element.className="bg-yellow-500"
    console.log("Hello World!", this.element)
  }
}
