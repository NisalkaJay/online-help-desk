const sidebar = document.getElementById('sidebar');
const content = document.getElementById('content');


function toggleSidebar() {
    sidebar.classList.toggle('active');
    content.classList.toggle('active-content');
}


document.querySelector('.menu-button').addEventListener('click', toggleSidebar);