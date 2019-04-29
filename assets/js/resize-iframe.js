(function() {

function resizeIframe(iframe) {
  const aspectRatio = iframe.width / iframe.height;
  iframe.style.width = '100%';
  iframe.style.height = `${iframe.clientWidth / aspectRatio}px`;
}

function resizeIframes() {
  const iframes =
      Array.from(document.querySelectorAll('.kg-embed-card iframe'));
  for (let iframe of iframes) {
    resizeIframe(iframe);
  }
}

function init() {
  resizeIframes();
}

window.addEventListener('DOMContentLoaded', init);

})();
