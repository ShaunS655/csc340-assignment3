<#import "layout.ftlh" as l>

<@l.layout title="Suggested Pokemon - Home">

    <div class="start-statement">
        This is a page simply about some of my favorite Pokemon. Browse your favorites below or add a new one!
    </div>

    <!-- DYNAMIC GRID OF CHARACTERS FROM DATABASE -->
    <div class="character-grid">
        <#list characters as character>
            <article class="character-card">
                <img src="${character.imageUrl!'/images/default.png'}" alt="${character.name}" width="200" height="200">
                <div class="character-info">
                    <h2 class="character-title">${character.name}</h2>
                    <p class="character-desc">${character.description!''}</p>
                    <a href="/detail?id=${character.characterId}"><button class="view-details-btn">View Details</button></a>
                </div>
            </article>
        </#list>
    </div>

</@l.layout>