import { Controller } from "@hotwired/stimulus"

const counter = (element, countTo) => {
  let count = 0;
  let timer = Math.round(2000 / countTo);

  setInterval(() => {
    if (count <= countTo) {
      element.textContent = count === countTo ? `${count.toString()}+` : count;
      count++;
    }
  }, timer);
}

// Connects to data-controller="our-clients"
export default class extends Controller {
  connect() {
    const clients = document.getElementById("clients");
    const projects = document.getElementById("projects");
    const teamMembers = document.getElementById("team-members");
    const experience = document.getElementById("experience");

    counter(clients, parseInt(clients.textContent));
    counter(projects, parseInt(projects.textContent));
    counter(teamMembers, parseInt(teamMembers.textContent));
    counter(experience, parseInt(experience.textContent));
  }
}
