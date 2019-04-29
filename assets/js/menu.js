(function() {

const ui = {
  menu: null,
  sidebarContent: null,
};

function handleHamburgerClick() {
  ui.sidebarContent.classList.toggle('active');
  ui.menu.classList.toggle('active');
}

function initSelectors() {
  ui.menu = document.querySelector('.hamburger-menu');
  ui.sidebarContent = document.querySelector('.sidebar-content');
}

function init() {
  initSelectors();
  ui.menu.addEventListener('click', handleHamburgerClick);
}

window.addEventListener('load', init);

})();
