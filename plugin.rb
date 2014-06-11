# name: History
# about: Avoid using replace state when navigating through topics
# version: 0.1
# authors: Sam Saffron

DiscoursePluginRegistry.serialized_current_user_fields << "protect_history"

register_asset "javascripts/templates/discourse_history_checkbox.js.handlebars"
register_asset "javascripts/views/history_checkbox_view.js"
register_asset "javascripts/initializers/discourse_history.js.es6"
