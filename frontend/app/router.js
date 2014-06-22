import Ember from 'ember';

var Router = Ember.Router.extend({
  location: RuberryENV.locationType
});

Router.map(function() {
  this.resource('rubrics', function() {
    this.route('show', { path: ':rubricId' });
  });
});

export default Router;
