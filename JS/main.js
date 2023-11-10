// Опять же, надеюсь правильно понял задачу, если да, то вместо window.onload можно использовать отдельный ивент
document.addEventListener("DOMContentLoaded", function () {
  console.log("Страница полностью загружена!");
});

// Ещё можно вот так, сделать ещё прямее :P
window.addEventListener("load", function () {
  alert("Страница полностью загружена!");
});
