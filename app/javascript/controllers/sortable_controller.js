import { Controller } from "@hotwired/stimulus"
import Sortable from 'sortablejs';
import { put } from '@rails/request.js'

export default class extends Controller {
  static values = {
    group: String
  }

  connect() {
    Sortable.create(this.element, {
      onEnd: this.onEnd.bind(this),
      group: this.groupValue,
      ghostClass: "bg-red-300",
    })
  }

  onEnd(event) {
    const sortableUpdateUrl = event.item.dataset.sortableUpdateUrl
    const newIndex = event.newIndex
    const sortableColumnId = event.to.dataset.sortableColumnId

    put(sortableUpdateUrl, {
      body: JSON.stringify({
        rowOrderPosition: newIndex,
        newColumnId: sortableColumnId
      })
    })
  }
}
