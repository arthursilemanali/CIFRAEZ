var checkboxScroll = document.querySelector("#checkboxScroll");
var velocidade_range = document.querySelector("#range");
var range = document.getElementById("rolar");

var scrollInterval;

function opçao_rolar(element) {
  if (element.checked) {
    velocidade_range.classList.remove("escondido");
  } else {
    velocidade_range.classList.add("escondido");
    range.classList.remove("escondido")
    stopScroll();
  }
}

function correr_pagina() {
  
  var intervalo = parseInt(range.value);
  var intervalo_liso = intervalo / 10;
  range.classList.add("escondido")
  scrollInterval = setInterval(function () {
    window.scrollBy(0, 1);
    if (
      window.innerHeight + window.pageYOffset >=
      document.body.offsetHeight
    ) {
      clearInterval(scrollInterval);
      range.value = "";
      parar_rolagem();
      range.classList.remove("escondido")
    }
  }, intervalo_liso);
}

function parar_rolagem() {
  clearInterval(scrollInterval);
  velocidade_range.classList.add("escondido");
  range.classList.remove("escondido")
  checkboxScroll.checked = false;
}