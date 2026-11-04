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

<div class="character-profile-layout">
    
    <!-- LEFT SIDE: Stacks the Image and Quick Details -->
    <div class="quadrant-left">
        
        <!-- Quadrant 1: Character Picture -->
        <div class="quad-image">
            <img src="/images/Clodsire.png" alt="Pokemon Image 1" width = "200" height = "200">
        </div>
        
        <!-- Quadrant 2: Short Details (right below image) -->
        <div class="quad-quick-details">
            <h3>Basic Information</h3>
            <ul>
                <li><strong>Types:</strong> Ground/Poison</li>
                <li><strong>Evolve From:</strong> Whooper (Paldean).</li>
                <li><strong>Generation:</strong> 9th Generation (Pokemon: Scarlet, Violet)</li>
                <li><strong>Evolution:</strong> Evolved at level 20. Cannot evolve again.</li>
            </ul>
        </div>
        
    </div>

    <!-- RIGHT SIDE: Holds the long-form text content -->
    <!-- Quadrant 3: Backstory, Personality, etc. -->
    <div class="quadrant-right-lore">
        <h2>Biology</h2>
        <p>Clodsire is a quadrupedal, amphibious pokemon with a rounded body that is dark brown on top and light brown on the bottom.
          It has beady black eyes, a large mouth, and tiny nostrols. It has tiny legs and a short, doral fine on its lower back that leads
          to a bulbous tail. 
        </p>
        <p> On the top of its back, it has six light purple spots. If Clodsire is attacked, it will retaliate by sticking thick spines out from its body. It’s a risky move that puts everything on the line. 
          Clodsire lives in the depths of ponds and swamps, helping its younger counterpart, Wooper, cross the water by carrying them on its back.
        </p>
        <h2>Lore</h2>
        <p><strong><span style="color:red;">Scarlet:</span></strong> When attacked, this Pokémon will retaliate by sticking thick spines out from its body. It’s a risky move that puts everything on the line. </p>
        <p><strong><span style="color:purple;">Violet:</span></strong> It lives at the bottom of ponds and swamps. It will carry Wooper on its back and ferry them across water from one shore to the other. </p>
        <h2>Game Appearances</h2>
        <p><strong>Pokemon Scarlet/Violet:</strong></p> It appears in Area One, Area Three, and Area Five. 
    </div>

</div>

<!-- BODY SECTION -->
  <body> 


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