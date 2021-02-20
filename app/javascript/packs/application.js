
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
import "bootstrap/dist/js/bootstrap"
require("../stylesheets/application.scss")
import "@fortawesome/fontawesome-free/js/all"


//= require jquery
//= require_tree .