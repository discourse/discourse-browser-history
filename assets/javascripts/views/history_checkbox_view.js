Discourse.HistoryPlugin = {};
Discourse.HistoryPlugin.CheckboxView = Discourse.View.extend({
  init: function(){
    this._super();
    var user = this.get('user');
    if(user){
      this.set('checked', user.custom_fields.protect_history === 'true');
    }
  },
  templateName: 'javascripts/templates/discourse_history_checkbox',
  classNames: ['controls'],

  checkedChanged: function(){
    var user = this.get('user');
    if(user){
      user.set('custom_fields.protect_history', this.get('checked') ? 'true' : 'false');
    }
  }.observes('checked')
});
Discourse.PreferencesView.registerCustomSection(Discourse.HistoryPlugin.CheckboxView);
