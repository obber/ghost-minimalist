(function() {

  function init() {
    new Zooming({}).listen('.kg-image');
    new Zooming({}).listen('.kg-gallery-image img');
  }

  window.addEventListener('DOMContentLoaded', init);
})();
