import Ember from 'ember';
import startApp from '../helpers/start-app';

var App, server;

module('Acceptance: Rubrics Index Page', {
  setup: function() {
    App = startApp();

    var rubrics = [
      { id: 1, name: 'Lunar Kitchen' },
      { id: 2, name: 'Stats List' },
      { id: 3, name: 'Building Manager' }
    ];

    server = new Pretender(function() {
      this.get('/api/v1/rubrics', function(request) {
        return [200, {"Content-Type": "application/json"}, JSON.stringify({rubrics: rubrics})];
      });
    });
  },
  teardown: function() {
    Ember.run(App, 'destroy');
    server.shutdown();
  }
});

test('visiting /rubrics', function() {
  visit('/rubrics').then(function() {
    equal(find('a:contains("Lunar Kitchen")').length, 1);
    equal(find('a:contains("Stats List")').length, 1);
    equal(find('a:contains("Building Manager")').length, 1);
  });
});
