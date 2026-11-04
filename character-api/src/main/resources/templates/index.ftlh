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

    <!-- INITIAL STATEMENT-->
    <div class = "start-statement">
    This is a page simply about some of my favorite Pokemon. I have chosen five to represent that.
    </div>

    <!-- STATEMENT OF WHY I CHOSE THIS
<div class = "main-statement">
    <p><strong>Why I Chose This Topic</strong></p>
    You may ask, "Why Pokemon?" Well, the simple answer is that everyone knows Pokemon! But do you know the ones that I have chosen?
    It's unlikely. So, I wanted to present these creatures to you in a simple and easy way. To show something slightly familiar, but
    also new things that have come from it. Some are new. Some are old. But I like them all.
    </div> -->

<!-- LISTING OUT WHAT POKEMON IS AND ARE-->
<div class = "explanation">
    <p><strong>Setting</strong> </p> Pokemon takes place in a region-by-region setting on the same world and, sometimes, different 
    timelines of that world. This regions are the basis of each game's generation. 
    <p><strong>Pokemon Species</strong></p> Majestic creatures with their own interesting lore, backstory, and evolution trends. It's
    something similar to the real world, but with a twist in their "Moves" they can use. 
    <p><strong>Role in Narrative</strong></p> Pokemon are the main focus of it, as the name says. Pokemon serve the setting as creatures that
        can be caught, trained, and battled. The player or viewer experiences an adventure interacting with these creatures and world around then.
</div>


<!-- GRID OF IMAGES OF MY FAVORITES 1 -->
 <div class="character-grid">
  <!-- Character Card 1 -->
  <article class="character-card">
    <img src="/images/Clodsire" alt="Pokemon Image 1" width = "200" height = "200">
    <div class ="character-info">
    <h2 class="character-title">Clodsire</h2>
    <p class="character-desc">A Ground/Poison type Pokemon, also known as the Spiny Fish Pokemon.</p>
    <a href="detail.html"><button class="view-details-btn">View Details</button></a>
    </div>
  </article>
<article class="character-card">
    <img src="/images/Flygon.png" alt="Pokemon Image 2" width = "200" height = "200">
    <div class ="character-info">
    <h2 class="character-title">Flygon</h2>
    <p class="character-desc">A Dragon/Flying type Pokemon, also known as the Sandstorm Pokemon.</p>
    <button class="view-details-btn">View Details</button>
    </div>
  </article>

<article class="character-card">
    <img src="/images/Typhlosion.png" alt="Pokemon Image 3" width = "200" height = "200">
    <div class ="character-info">
    <h2 class="character-title">Typhlosion</h2>
    <p class="character-desc">A Fire type Pokemon, also known as the Volcano Pokemon. A starter Pokemon.</p>
    <button class="view-details-btn">View Details</button>
    </div>
  </article>

<article class="character-card">
    <img src="/images/Zekrom.png" alt="Pokemon Image 4" width = "200" height = "200">
    <div class ="character-info">
    <h2 class="character-title">Zekrom</h2>
    <p class="character-desc">A Electric/Dragon type Pokemon, also known as the Voltage Pokemon. A legendary Pokemon.</p>
    <button class="view-details-btn">View Details</button>
    </div>
  </article>

<article class="character-card">
    <img src="/images/Gallade.png" alt="Pokemon Image 5" width = "200" height = "200">
    <div class ="character-info">
    <h2 class="character-title">Gallade</h2>
    <p class="character-desc">A Fighting/Psychic type Pokemon, also known as the Sword Master Pokemon. Capable of Mega Evolution.</p>
    <button class="view-details-btn">View Details</button>
    </div>
  </article>
</div>


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