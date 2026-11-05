<#import "layout.ftlh" as l>

<@l.layout title="Error - Page Not Found">
    <div class="error-container" style="text-align: center; padding: 60px 20px;">
        <h2 style="font-size: 2.5rem; color: #e74c3c; margin-bottom: 20px;">Oops! Page Not Found</h2>
        <p style="font-size: 1.1rem; color: #555; margin-bottom: 30px;">
            ${message! "The character or page you are looking for does not exist or has been removed."}
        </p>
        <a href="/" style="background-color: #3498db; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px; font-weight: bold;">
            Return to Home Gallery
        </a>
    </div>
</@l.layout>