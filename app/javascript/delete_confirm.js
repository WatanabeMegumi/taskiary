document.addEventListener("turbo:load", () => {
  const deleteLink = document.getElementById("delete-link");
  if (deleteLink) {
    deleteLink.addEventListener("click", (e) => {
      e.preventDefault();
      if (confirm("本当に削除してもよろしいですか？")) {
        const form = document.createElement("form");
        form.method = "POST";
        form.action = deleteLink.dataset.deleteUrl;

        const methodInput = document.createElement("input");
        methodInput.type = "hidden";
        methodInput.name = "_method";
        methodInput.value = "delete";

        const csrfToken = document.querySelector('meta[name="csrf-token"]').content;
        const tokenInput = document.createElement("input");
        tokenInput.type = "hidden";
        tokenInput.name = "authenticity_token";
        tokenInput.value = csrfToken;

        form.appendChild(methodInput);
        form.appendChild(tokenInput);

        document.body.appendChild(form);
        form.submit();
      }
    });
  }
});
