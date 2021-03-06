import "bootstrap";
import flatpickr from 'flatpickr';
import 'flatpickr/dist/themes/airbnb.css';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr("#range_start", {
  altInput: true,
  "plugins": [new rangePlugin({ input: "#range_end"})]
});

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
