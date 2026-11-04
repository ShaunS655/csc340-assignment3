<!DOCTYPE html> 

<html> 

<!-- HEADER SECTION -->
<header class="site-header">
  <!-- Left: Search Bar -->
  <div class="header-left">
    <form class="search-form">
      <input type="text" placeholder="Search..." aria-label="Search">
      <button type="submit">🔍</button>
    </form>
  </div>

  <!-- Middle Header -->
  <div class="header-center">
    <a href="#" class="logo">Suggested Pokemon</a>
  </div>

    <div class="header-right">
    <nav class="nav-buttons">
    <a href="index.html"> <button type="button">Home</button></a>
    <a href="detail.html"> <button type="button">Details</button></a>
    <a href="about.html"> <button type="button">About</button></a>
    <a href="new-character-form.html"> <button type="button">Add a Character</button></a>
    </nav>
  </div>
</header>
<!-- END OF HEADER -->

<!-- BODY SECTION -->
  <body> 

    <form>
        <h2>Add New Entry</h2>

        <!-- Basic Info -->
        <fieldset>
            <legend>Basic Information</legend>
            
            <div class="form-group">
                <label for="name"><strong>Name</strong></label>
                <input type="text" id="name" name="name" required placeholder="e.g., Pikachu">
            </div>

            <div class="form-group">
                <label for="type"><strong>Type</strong>Type</strong></label>
                <input type="text" id="type" name="type" placeholder="e.g., Electric">
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
                <label for="evolves-from"><strong>Evolution (Previous Form)</strong></label>
                <input type="text" id="evolves-from" name="evolves_from" placeholder="e.g., Pichu">
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
                <label for="game-appearances"><strong>Game Appearances</strong></label>
                <textarea id="game-appearances" name="game_appearances" rows="3" placeholder="List the games this entry appears in."></textarea>
            </div>
        </fieldset>

        <button type="submit">Add to List</button>
    </form>

  </body>
<!-- END OF BODY -->

<style>

    body {
        background-color: #C2E5D3;
    }
</style>

<!-- LINK TO STYLESHEET -->
  <link rel="stylesheet" href="style.css">
</html> 