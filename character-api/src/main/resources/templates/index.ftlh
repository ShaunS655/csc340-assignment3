<#import "layout.ftlh" as l>

<@l.layout title="Pokemon Gallery - Home">

    <div class="start-statement">
        This is a page simply about some Pokemon.
    </div>

    <!-- DYNAMIC GRID OF CHARACTERS -->
    <div class="character-grid">
        <#list characters as character>
            <article class="character-card">
                <img src="${character.imageUrl!'/images/default.png'}" alt="${character.name}" width="200" height="200">
                <div class="character-info">
                    <h2 class="character-title">${character.name}</h2>
                    <p class="character-desc">${character.description!''}</p>
                    <!-- Link to the dynamic detail route -->
                    <a href="/characters/${character.characterId}">
                        <button class="view-details-btn">View Details</button>
                    </a>
                </div>
            </article>
        </#list>
    </div>

</@l.layout>