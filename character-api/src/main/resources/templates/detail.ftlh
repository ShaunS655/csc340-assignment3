<#import "layout.ftlh" as l>

<@l.layout title="${character.name!'Character Details'} - Pokemon Gallery">

<div class="character-profile-layout">
    
    <div class="character-actions">
    <a href="/characters/${character.characterId}/edit">
        <button type="button" class="edit-btn">Edit Character</button>
    </a>

    <form action="/characters/${character.characterId}/delete" method="POST" onsubmit="return confirm('Are you sure you want to delete this character?');">
    <button type="submit" class="delete-btn">Delete Character</button>
    </form>

    </div>


    <!-- LEFT SIDE: Image and Quick Details -->
    <div class="quadrant-left">
        <div class="quad-image">
            <img src="${character.imageUrl!}" alt="${character.name!'Pokemon Image'}" width="200" height="200">
        </div>
        
        <div class="quad-quick-details">
            <h3>Basic Information</h3>
            <ul>
                <li><strong>Region:</strong> ${character.region!''}</li>
                <li><strong>Types:</strong> ${character.type!''}</li>
                <li><strong>Generation:</strong> ${character.generation!''}</li>
                <li><strong>Legendary:</strong> <#if character.legendary?? && character.legendary>Yes<#else>No</#if></li>
                <#if character.evolveFrom?? && character.evolveFrom != "">
                    <li><strong>Evolves From:</strong> ${character.evolveFrom}</li>
                </#if>
                
                <#if character.evolution?? && character.evolution != "">
                    <li><strong>Evolves To:</strong> ${character.evolution}</li>
                </#if>
            </ul>
        </div>
    </div>

    <!-- RIGHT SIDE: Description / Lore -->
    <div class="quadrant-right-lore">
        <h2>Description</h2>
        <p>${character.description!''}</p>

        <#if character.biology?? && character.biology != "">
            <h2>Biology</h2>
            <p>${character.biology}</p>
        </#if>
        
        <#if character.lore?? && character.lore != "">
            <h2>Lore</h2>
            <p>${character.lore}</p>
        </#if>
        
        <#if character.gameAppearances?? && character.gameAppearances != "">
            <h2>Game Appearances</h2>
            <p>${character.gameAppearances}</p>
        </#if>
    </div>

</div>

</@l.layout>