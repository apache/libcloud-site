let systemInitiatedDark = window.matchMedia("(prefers-color-scheme: dark)");
let theme = sessionStorage.getItem('theme');

if (systemInitiatedDark.matches) {
  document.getElementById('theme-switch').checked = true;
} else {
  document.getElementById('theme-switch').checked = false;
  document.getElementById("theme-toggle").innerHTML = "Dark Mode";
}

function prefersColorTest(systemInitiatedDark) {
  if (systemInitiatedDark.matches) {
    document.documentElement.setAttribute('data-theme', 'dark');
    document.getElementById('theme-switch').checked = true;
    sessionStorage.setItem('theme', '');
  } else {
    document.documentElement.setAttribute('data-theme', 'light');
    document.getElementById('theme-switch').checked = false;
    sessionStorage.setItem('theme', '');
  }
}
systemInitiatedDark.addListener(prefersColorTest);


function modeSwitcher() {
  let theme = sessionStorage.getItem('theme');
  if (theme === "dark") {
    document.documentElement.setAttribute('data-theme', 'light');
    sessionStorage.setItem('theme', 'light');
    document.getElementById('theme-switch').checked = false;
  } else if (theme === "light") {
    document.documentElement.setAttribute('data-theme', 'dark');
    sessionStorage.setItem('theme', 'dark');
    document.getElementById('theme-switch').checked = true;
  } else if (systemInitiatedDark.matches) {
    document.documentElement.setAttribute('data-theme', 'light');
    sessionStorage.setItem('theme', 'light');
    document.getElementById('theme-switch').checked = false;
  } else {
    document.documentElement.setAttribute('data-theme', 'dark');
    document.getElementById('theme-switch').checked = true;
    sessionStorage.setItem('theme', 'dark');
  }
}

if (theme === "dark") {
  document.documentElement.setAttribute('data-theme', 'dark');
  sessionStorage.setItem('theme', 'dark');
  document.getElementById('theme-switch').checked = true;
} else if (theme === "light") {
  document.documentElement.setAttribute('data-theme', 'light');
  sessionStorage.setItem('theme', 'light');
  document.getElementById('theme-switch').checked = false;
}
