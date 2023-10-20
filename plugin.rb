# name: History
# about: Suppresses updating of URL during topic navigation.
# meta_topic_id: 16428
# version: 0.1
# authors: Sam Saffron

DiscoursePluginRegistry.serialized_current_user_fields << "protect_history"

after_initialize do
  User.register_custom_field_type('protect_history', :boolean)
end
