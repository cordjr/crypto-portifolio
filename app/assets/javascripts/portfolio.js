// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


var Portfolio = (function() {
    'use strict';

    function showModalEvent(id_portfolio){
        $('#portfolio_event_portfolio_id').val(id_portfolio);
        $('#modalEvent').modal('show');
    }
  
    
    
  
  
  
    return {
        showModalEvent : showModalEvent

    };
  }());