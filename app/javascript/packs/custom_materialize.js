document.addEventListener('turbolinks:load', function() {
  const elems = document.querySelectorAll('select');
  const instances = M.FormSelect.init(elems, "");
});

