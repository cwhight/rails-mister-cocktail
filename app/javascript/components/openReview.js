const review = document.querySelector("#review")
const reviewForm = document.querySelector("#review-form")
review.addEventListener("click", (e) => {
  reviewForm.classList.toggle("hidden")
})

export { reviewForm };
