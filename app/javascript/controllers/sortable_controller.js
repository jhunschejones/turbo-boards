import { Controller } from "@hotwired/stimulus"
import Sortable from 'sortablejs';

export default class extends Controller {
  static values = {
    group: String
  }

  connect() {
    Sortable.create(this.element, {
      onEnd: this.onEnd.bind(this),
      group: this.groupValue,
    })
  }

  onEnd(event) {
    const sortableUpdateUrl = event.item.dataset.sortableUpdateUrl
    const newIndex = event.newIndex

    const sortableColumnId = event.to.dataset.sortableColumnId
    console.log(newIndex)
    console.log(event.to.dataset)

    // put(sortableUpdateUrl, {
    //   body: JSON.stringify({row_order_position: event.newIndex, list_id: sortableListId})
    // })
  }
}
