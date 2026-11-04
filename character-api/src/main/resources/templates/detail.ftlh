<#import "layout.ftlh" as l>

<@l.layout title="${character.name!'Character Details'} - Suggested Pokemon">

<div class="character-profile-layout">
    
    <!-- LEFT SIDE: Image and Quick Details -->
    <div class="quadrant-left">
        <div class="quad-image">
            <img src="/images/${character.name!}.png" alt="${character.name!'Pokemon'}" width="200" height="200">
        </div>
        
        <div class="quad-quick-details">
            <h3>Basic Information</h3>
            <ul>
                <li><strong>Region:</strong> ${character.region!''}</li>
                <li><strong>Types:</strong> ${character.type!''}</li>
                <li><strong>Generation:</strong> ${character.generation!''}</li>
                <li><strong>Legendary:</strong> <#if character.legendary?? && character.legendary>Yes<#else>No</#if></li>
            </ul>
        </div>
    </div>

    <!-- RIGHT SIDE: Description / Lore -->
    <div class="quadrant-right-lore">
        <h2>Description</h2>
        <p>${character.description!''}</p>
    </div>

</div>

</@l.layout>