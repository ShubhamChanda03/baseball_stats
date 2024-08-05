// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
// import "controllers"
// app/javascript/packs/application.js
import Turbolinks from 'turbolinks'
Turbolinks.start()
//= require ../../../../.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/jquery-rails-4.6.0/vendor/assets/javascripts/jquery.js
//= require jquery_ujs
//= require turbolinks
//= require_tree .

import { Turbo } from "@hotwired/turbo-rails"
