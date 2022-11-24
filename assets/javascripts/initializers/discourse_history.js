import User from 'discourse/models/user';
import TopicRoute from 'discourse/routes/topic';

export default {
  name: "discourse_history",
  initialize: function() {
    if(User.currentProp("custom_fields.protect_history") === true){
      TopicRoute.disableReplaceState = true;
    }
  }
};
