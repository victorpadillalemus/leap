const inputSlider = () => {
  const slider = document.getElementById("myRange");

  if (slider) {
    slider.max = "49";
    const output = document.getElementById("search_arrive");
    output.innerHTML = slider.value; // Display the default slider value

  var slider2 = document.getElementById("myRange2");
  slider2.max = "49";
  var output2 = document.getElementById("search_depart");
  output2.innerHTML = slider2.value;
  const transit = document.querySelector(".inject-transit-time")

  // Update the current slider value (each time you drag the slider handle)
    slider.oninput = function() {
      const aHour= (this.value -1) / 2
      output.value = `${(Math.floor(aHour) + 0) % 24} :${Number.isInteger(aHour) ? "00" : "30"}`
      const dHour= (slider2.value -1) / 2
      const time = dHour - aHour
      const transitTime = `${(Math.floor(time) + 0) % 24} :${Number.isInteger(time) ? "00" : "30"}`
      transit.innerHTML = transitTime
    }

  slider2.oninput = function() {
    const dHour= (this.value -1) / 2
    output2.value = `${(Math.floor(dHour) + 24) % 24} :${Number.isInteger(dHour) ? "00" : "30"}`
    const aHour= (slider.value -1) / 2
    const time = dHour - aHour
    const transitTime = `${(Math.floor(time) + 0) % 24} :${Number.isInteger(time) ? "00" : "30"}`
    transit.innerHTML = transitTime
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
}

// const valuestart = $("select[name='timestart']").val();
// const valuestop = $("select[name='timestop']").val();

// //create date format
// var timeStart = new Date("01/01/2007 " + valuestart).getHours();
// var timeEnd = new Date("01/01/2007 " + valuestop).getHours();

// var hourDiff = timeEnd - timeStart;

export { inputSlider }
