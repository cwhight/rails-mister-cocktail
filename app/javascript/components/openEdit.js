const edit = document.querySelector("#edit")
const editForm = document.querySelector("#edit-form")
edit.addEventListener("click", (e) => {
  editForm.classList.toggle("hidden")
})

export { editForm };
