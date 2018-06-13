// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//

var Home = (function() {
  'use strict';

  var Home = {
    init: {

    }
  };
  function updateCoins() {
    // body...
    console.log(" atualizando cards");
    $('#card_container').load('home/cards');
    setTimeout(updateCoins, 5000);
  }
  $(document).ready(function () {

    setTimeout(updateCoins, 20000);
  });



  return Home;
}());
