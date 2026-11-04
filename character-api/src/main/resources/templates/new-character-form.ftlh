<#import "layout.ftlh" as l>

<@l.layout title="Add New Character - Suggested Pokemon">

    <form action="/characters" method="POST">
        <h2>Add New Entry</h2>

        <!-- Basic Info -->
        <fieldset>
            <legend>Basic Information</legend>
            
            <div class="form-group">
                <label for="name"><strong>Name</strong></label>
                <input type="text" id="name" name="name" required placeholder="e.g., Pikachu">
            </div>

            <div class="form-group">
                <label for="type"><strong>Type</strong></label>
                <input type="text" id="type" name="type" placeholder="e.g., Electric">
            </div>

            <div class="form-group">
                <label for="imageUrl"><strong>Image Path / URL</strong></label>
                <input type="text" id="imageUrl" name="imageUrl" placeholder="e.g., /images/Pikachu.png">
            </div>

            <div class="form-group">
                <label for="generation"><strong>Generation</strong></label>
                <input type="text" id="generation" name="generation" placeholder="e.g., Generation I">
            </div>
        </fieldset>

        <!-- Evolution Line -->
        <fieldset>
            <legend>Evolutionary Line</legend>

            <div class="form-group">
                <label for="evolveFrom"><strong>Evolution (Previous Form)</strong></label>
                <input type="text" id="evolveFrom" name="evolveFrom" placeholder="e.g., Pichu">
            </div>

            <div class="form-group">
                <label for="evolution"><strong>Evolution (Next Form)</strong></label>
                <input type="text" id="evolution" name="evolution" placeholder="e.g., Raichu">
            </div>
        </fieldset>

        <!-- Descriptions & Lore -->
        <fieldset>
            <legend>Details & Background</legend>

            <div class="form-group">
                <label for="biology"><strong>Biology</strong></label>
                <textarea id="biology" name="biology" rows="4" placeholder="Describe its physical appearance and biological traits."></textarea>
            </div>

            <div class="form-group">
                <label for="lore"><strong>Lore</strong></label>
                <textarea id="lore" name="lore" rows="4" placeholder="Share its history, myths, or legends..."></textarea>
            </div>

            <div class="form-group">
                <label for="gameAppearances"><strong>Game Appearances</strong></label>
                <textarea id="gameAppearances" name="gameAppearances" rows="3" placeholder="List the games this entry appears in."></textarea>
            </div>
        </fieldset>

        <button type="submit">Add to List</button>
    </form>

</@l.layout>