# name: History
# about: Avoid using replace state when navigating through topics
# version: 0.1
# authors: Sam Saffron

DiscoursePluginRegistry.serialized_current_user_fields << "protect_history"

after_initialize do
  User.register_custom_field_type('protect_history', :boolean)
end

register_asset "javascripts/connectors/user-custom-preferences/protect-history.hbs"
register_asset "javascripts/initializers/discourse_history.js.es6"
