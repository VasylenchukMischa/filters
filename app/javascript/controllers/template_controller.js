import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['target', 'template']
  static values = {
    wrapperSelector: {
      type: String,
      default: '.nested-form-wrapper'
    },
    formTemplate: Object
  }

  connect () {
    Object.entries(this.formTemplateValue).forEach(entry => {
      let content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime()+Math.floor(Math.random() * 1000000))
      content = content.replace(/EXISTED_VALUE/g, entry[0])
      this.targetTarget.insertAdjacentHTML('beforebegin', content)
    });
  }

  add (e) {
    e.preventDefault()

    let content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())
    content = content.replace(/EXISTED_VALUE/g, '')
    this.targetTarget.insertAdjacentHTML('beforebegin', content)
  }

  remove (e) {
    e.preventDefault()

    const wrapper = e.target.closest(this.wrapperSelectorValue)

    if (wrapper.dataset.newRecord === 'true') {
      wrapper.remove()
    } else {
      wrapper.style.display = 'none'
      wrapper.querySelector("input[name*='_destroy']").value = 1
    }
  }

}
