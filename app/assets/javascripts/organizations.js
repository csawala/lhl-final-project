'use strict'

// serialize filter data for offers / needs / organizations pages
const showValues = () => {
  var string = $("form").serialize();
}

$(document).ready(() => {

  $("input[type='submit']").on("click", showValues);

});
