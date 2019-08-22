import "bootstrap";
import "../plugins/flatpickr";

var slider = document.getElementById("myRange")
slider.max = "49";
var output = document.getElementById("search_arrival");
output.innerHTML = slider.value; // Display the default slider value

var slider2 = document.getElementById("myRange2");
slider2.max = "49";
var output2 = document.getElementById("search_departure");
output2.innerHTML = slider2.value;

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
  const hour= (this.value - 1) / 2
  output.value = `${(Math.floor(hour) + 8) % 24} : ${Number.isInteger(hour) ? "00" : "30" }`

}

slider2.oninput = function() {
  const hour= (this.value -1) / 2
  output2.value = `${(Math.floor(hour) + 8) % 24} :${Number.isInteger(hour) ? "00" : "30"}`
}



$(document).ready(function() {
  $('.minus').click(function () {
    var $input = $(this).parent().find('input');
    var count = parseInt($input.val()) - 1;
    count = count < 1 ? 1 : count;
    $input.val(count);
    $input.change();
    return false;
  });
  $('.plus').click(function () {
    var $input = $(this).parent().find('input');
    $input.val(parseInt($input.val()) + 1);
    $input.change();
    return false;
  });
});
