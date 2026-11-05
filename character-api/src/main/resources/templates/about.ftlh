<#import "layout.ftlh" as l>

<@l.layout title="About - Pokémon Character Gallery">
    <div class="about-container" style="max-width: 800px; margin: 40px auto; padding: 20px;">
        <h2>About This Application</h2>
        <p>Welcome to the Pokémon Character Gallery! This full-stack web application is built using <strong>Spring Boot</strong>, <strong>Spring Data JPA</strong>, and <strong>Apache FreeMarker</strong>.</p>
        
        <h3>Features</h3>
        <ul>
            <li>Browse and search through a dynamic character catalog.</li>
            <li>View detailed biological info, lore, and game appearances.</li>
            <li>Add new characters and update existing records.</li>
            <li>Full CRUD support with database persistence.</li>
        </ul>
        
        <p style="margin-top: 30px;">
            <a href="/" class="btn">&larr; Back to Gallery</a>
        </p>
    </div>
</@l.layout>