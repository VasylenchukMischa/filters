import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import "@popperjs/core";
import "bootstrap";
import "../stylesheets/application.scss";
import '@fortawesome/fontawesome-free/js/fontawesome';
import '@fortawesome/fontawesome-free/js/solid';
import '@fortawesome/fontawesome-free/js/regular';
import "trix";
import "@rails/actiontext";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

import "controllers";
