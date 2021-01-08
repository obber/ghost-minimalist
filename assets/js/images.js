(function() {

  function init() {
    console.log('new zooming');
    new Zooming({}).listen('.kg-image');
    new Zooming({}).listen('.kg-gallery-image img');
  }

  window.addEventListener('DOMContentLoaded', init);
})();
