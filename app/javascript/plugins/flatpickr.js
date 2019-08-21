import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

const datePicker = document.querySelector(".datepicker");

if (datePicker) {
  flatpickr(".datepicker", {
    altInput: true,
    minDate: "tomorrow",
    disableMobile: "false"
  });
}


