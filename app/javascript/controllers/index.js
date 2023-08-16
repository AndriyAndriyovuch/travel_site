// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)


window.addEventListener("scroll", function () {
let header = document.getElementById("scrolling-hint");
let scrollTop = window.pageYOffset || document.documentElement.scrollTop;
header.style.opacity = 1 - scrollTop / 300;
});