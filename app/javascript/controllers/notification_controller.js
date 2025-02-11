import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    timeout: Number
  }

  connect() {
    if (this.timeoutValue) {
      setTimeout(() => {
        this.close()
      }, this.timeoutValue)
    }
  }

  close() {
    this.element.remove()
  }
}