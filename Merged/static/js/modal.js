/*
 * lib to provide modal essential ops.
 * Martin
 */

/*
 * Opean a modal 
 * id: modal id as string
 */
function modal_open(id) {
  var modal = document.getElementById(id);
  modal.style.display = "block";
}

/*
 * Close a modal
 * id: modal id as string
 */
function modal_close(id) {
  var modal = document.getElementById(id);
  modal.style.display = "none";
}

/* automate close on X click */
(function() {
  var cl = document.getElementsByClassName("close");
  console.log(cl);
  for (var i=0; i<cl.length; i++) {
    cl[i].onclick = (function(a) {
      return function() {
        var modal = a.parentNode.parentNode.parentNode.id;
        modal_close(modal);
      };
    }) (cl[i]);
  }
})();
