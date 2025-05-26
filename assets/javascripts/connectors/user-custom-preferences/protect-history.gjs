import Component, { Input } from "@ember/component";
import { classNames, tagName } from "@ember-decorators/component";

@tagName("div")
@classNames("user-custom-preferences-outlet", "protect-history")
export default class ProtectHistory extends Component {
  <template>
    <div class="controls">
      <label class="checkbox-label">
        {{Input
          type="checkbox"
          checked=this.controller.model.custom_fields.protect_history
        }}
        Don't update URL while scrolling through topics
      </label>
    </div>
  </template>
}
