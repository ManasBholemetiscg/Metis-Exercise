$(document).ready(function () {
    $("#odd").click(function () {
      $("table tr:odd").not(':first-child').toggleClass("odd-row");
    });
    $("#even").click(function () {
      $("table tr:even").not(':first-child').toggleClass("even-row");
    });
  });