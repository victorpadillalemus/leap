import "bootstrap";
import "../plugins/flatpickr";
import { navSlide } from "../components/navslide";
import { inputSlider } from "../components/form";


const backButton = document.querySelector(".backjs")

if (backButton)
{
  backButton.addEventListener("click", () => history.back())
}

navSlide();
inputSlider();

