<#macro layout title>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <!-- HEADER SECTION (Shared across all pages) -->
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
            <a href="/" class="logo">Suggested Pokemon</a>
        </div>

        <!-- Right: Navigation Buttons -->
        <div class="header-right">
            <nav class="nav-buttons">
                <a href="/"><button type="button">Home</button></a>
                <a href="/detail"><button type="button">Details</button></a>
                <a href="/about"><button type="button">About</button></a>
                <a href="/characters/new"><button type="button">Add a Character</button></a>
            </nav>
        </div>
    </header>
    <!-- END OF HEADER -->

    <!-- Success Message Alert (for backend actions) -->
    <#if successMessage??>
        <div class="alert alert-success">
            ${successMessage}
        </div>
    </#if>

    <!-- MAIN PAGE CONTENT -->
    <main>
        <#nested>
    </main>

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2026 Character Gallery</p>
    </footer>
</body>
</html>
</#macro>