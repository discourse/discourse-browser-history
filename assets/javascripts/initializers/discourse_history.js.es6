export default {
  name: "discourse_history",
  initialize: function() {
    if(Discourse.User.currentProp("custom_fields.protect_history") === true){
      Discourse.TopicRoute.disableReplaceState = true;
    }
  }
};
