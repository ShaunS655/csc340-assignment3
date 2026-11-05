<#import "layout.ftlh" as l>

<@l.layout title="${(pokemonCharacter.characterId??)?then('Edit Character', 'Add New Character')} - Suggested Pokemon">

    <!-- 1. Dynamically switch action URL and title based on whether ID exists -->
    <form action="/characters<#if pokemonCharacter.characterId??>/${pokemonCharacter.characterId}</#if>" method="POST">
        <h2><#if pokemonCharacter.characterId??>Edit Character<#else>Add New Entry</#if></h2>

        <!-- Basic Info -->
        <fieldset>
            <legend>Basic Information</legend>
            
            <div class="form-group">
                <label for="name"><strong>Name</strong></label>
                <input type="text" id="name" name="name" required placeholder="e.g., Pikachu" value="${pokemonCharacter.name!''}">
            </div>

            <div class="form-group">
                <label for="description"><strong>Description (Short Summary)</strong></label>
                <textarea id="description" name="description" required rows="2" placeholder="e.g., An Electric-type Mouse Pokémon.">${pokemonCharacter.description!''}</textarea>
            </div>

            <div class="form-group">
                <label for="region"><strong>Region</strong></label>
                <input type="text" id="region" name="region" required placeholder="e.g., Kanto" value="${pokemonCharacter.region!''}">
            </div>

            <div class="form-group">
                <label for="type"><strong>Type</strong></label>
                <input type="text" id="type" name="type" required placeholder="e.g., Electric" value="${pokemonCharacter.type!''}">
            </div>

            <div class="form-group">
                <label for="generation"><strong>Generation</strong></label>
                <input type="text" id="generation" name="generation" required placeholder="e.g., Generation I" value="${pokemonCharacter.generation!''}">
            </div>

            <div class="form-group">
                <label for="legendary"><strong>Legendary?</strong></label>
                <select id="legendary" name="legendary" required>
                    <option value="false" <#if pokemonCharacter.legendary?? && pokemonCharacter.legendary == false>selected</#if>>No</option>
                    <option value="true" <#if pokemonCharacter.legendary?? && pokemonCharacter.legendary == true>selected</#if>>Yes</option>
                </select>
            </div>

            <div class="form-group">
                <label for="imageUrl"><strong>Image Path / URL</strong></label>
                <input type="text" id="imageUrl" name="imageUrl" placeholder="e.g., /images/Pikachu.png" value="${pokemonCharacter.imageUrl!''}">
            </div>
        </fieldset>

        <!-- Evolution Line -->
        <fieldset>
            <legend>Evolutionary Line</legend>

            <div class="form-group">
                <label for="evolveFrom"><strong>Evolution (Previous Form)</strong></label>
                <input type="text" id="evolveFrom" name="evolveFrom" placeholder="e.g., Pichu" value="${pokemonCharacter.evolveFrom!''}">
            </div>

            <div class="form-group">
                <label for="evolution"><strong>Evolution (Next Form)</strong></label>
                <input type="text" id="evolution" name="evolution" placeholder="e.g., Raichu" value="${pokemonCharacter.evolution!''}">
            </div>
        </fieldset>

        <!-- Descriptions & Lore -->
        <fieldset>
            <legend>Details & Background</legend>

            <div class="form-group">
                <label for="biology"><strong>Biology</strong></label>
                <textarea id="biology" name="biology" rows="4" placeholder="Describe its physical appearance and biological traits.">${pokemonCharacter.biology!''}</textarea>
            </div>

            <div class="form-group">
                <label for="lore"><strong>Lore</strong></label>
                <textarea id="lore" name="lore" rows="4" placeholder="Share its history, myths, or legends...">${pokemonCharacter.lore!''}</textarea>
            </div>

            <div class="form-group">
                <label for="gameAppearances"><strong>Game Appearances</strong></label>
                <textarea id="gameAppearances" name="gameAppearances" rows="3" placeholder="List the games this entry appears in.">${pokemonCharacter.gameAppearances!''}</textarea>
            </div>
        </fieldset>

        <!-- 2. Dynamically change submit button text -->
        <button type="submit"><#if pokemonCharacter.characterId??>Save Changes<#else>Add to List</#if></button>
    </form>

</@l.layout>