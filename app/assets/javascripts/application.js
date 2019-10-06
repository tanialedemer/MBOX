//= require rails.validations
//= require jquery
//= require jquery_ujs
//= require selectize

$(function() {
  $('#user-select').selectize({
    create: true,
    sortField: 'text'
  });
});