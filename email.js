window.addEventListener("load", (event) => {
  for (email of document.getElementsByClassName("email")) {
    email.href = "mailto:jesse.noreply.frohlich@noreply.gmail.com".replaceAll(
      "noreply.",
      "",
    );
  }
});
