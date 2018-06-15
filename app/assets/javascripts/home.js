// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//

var Home = (function() {
  'use strict';
  var TIMEOUT = 3000;

  var Home = {
    init: {

    }
  };
  function updateCoins() {
    // body...
    console.log(" atualizando cards");
    $('#card_container').load('home/cards', function(){
      $('.coin-card-price').addClass('price-alert');
    });
    setTimeout(updateCoins, TIMEOUT);
  }
  $(document).ready(function () {

    setTimeout(updateCoins, TIMEOUT);
  });



  return Home;
}());
