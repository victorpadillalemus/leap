import "bootstrap";
import "../plugins/flatpickr";
import { navSlide } from "../components/navslide";


const slider = document.getElementById("myRange");

if (slider) {
  const output = document.getElementById("demo");
  output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
  slider.oninput = function() {
    output.innerHTML = this.value;
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

}

navSlide();

