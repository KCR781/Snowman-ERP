document.addEventListener("DOMContentLoaded", function () {
  fetch("http://localhost:8080/v1/users")
    .then(response => {
      if (!response.ok) throw new Error("Erro na requisição");
      return response.json();
    })
    .then(data => {
      const list = document.getElementById("user-list");
      data.forEach(user => {
        const item = document.createElement("li");
        item.textContent = `${user.name} - ${user.email}`;
        list.appendChild(item);
      });
    })
    .catch(error => {
      console.error("Erro ao buscar dados:", error);
    });
});
