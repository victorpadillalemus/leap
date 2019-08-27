import "bootstrap";
import "../plugins/flatpickr";
import { navSlide } from "../components/navslide";
import { inputSlider } from "../components/form";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

const backButton = document.querySelector(".backjs")

if (backButton)
{
  backButton.addEventListener("click", () => history.back())
}

navSlide();
inputSlider();
initMapbox();

