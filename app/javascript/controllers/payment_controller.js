import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="payment"
export default class extends Controller {
  // declare a list of targets
  static targets = ['selection', 'additionalFields']

  // define the initialization logic, which could implement as a loop
  // over the targets, hiding each, but it turns out that we can take
  // advantage of the code that shows additional fields and
  initialize() {
    this.showAdditionalFields()
  }

  showAdditionalFields() {
    let selection = this.selectionTarget.value

    for (let fields of this.additionalFieldsTarget) {
      fields.disabled = fields.hidden = (fields.dataset.type != selection)
    }
  }
  connect() {
  }
}
