# csc340-assignment3

## App Description & Character Type
This application is a Spring Boot RESTful API designed to manage Pokémon characters. It allows users to perform full CRUD operations (Create, Read, Update, Delete) on Pokémon entities, as well as filter characters by region and search for them by name using case-insensitive partial matching. The application uses a PostgreSQL database hosted on Neon and is containerized with Docker for deployment on Render.

## Entity Attributes & Rules

| Attribute | Type | Rules |
| :--- | :--- | :--- |
| `characterId` | Long | Unique, auto-generated primary key |
| `name` | String | Required (not null, not blank) |
| `description` | String | Required (not null, not blank) |
| `region` | String | Required (not null, not blank) - e.g., Kanto, Johto |
| `type` | String | Required (not null, not blank) - e.g., Electric, Fire |
| `generation` | String | Required (not null, not blank) - e.g., Generation I |
| `legendary` | Boolean | Required (not null) - true or false |
| `imageUrl` | String | Path or URL to the character's image asset |
| `evolveFrom` | String | Optional - The previous evolution stage (e.g., Pichu, Wooper) |
| `evolution` | String | Optional - The next evolution stage or "None" |
| `biology` | String | Optional - Description of physical appearance and traits |
| `lore` | String | Optional - Background history, myths, or legends |
| `gameAppearances` | String | Optional - List of video games the character appears in |

---

## API Endpoints Reference

| Method & Path | Description | Success Status |
| :--- | :--- | :--- |
| `GET /api/characters` | Get all characters | `200 OK` |
| `GET /api/characters/{id}` | Get one character by ID | `200 OK` (Returns `404` if not found) |
| `POST /api/characters` | Add a new character | `201 Created` (Returns `400` if validation fails) |
| `PUT /api/characters/{id}` | Update an existing character | `200 OK` (Returns `404` or `400` on error) |
| `DELETE /api/characters/{id}` | Delete a character | `204 No Content` (Returns `404` if not found) |
| `GET /api/characters?region=Kanto` | Filter characters by region category | `200 OK` |
| `GET /api/characters?name=pika` | Search characters by name (partial, case-insensitive) | `200 OK` |

### Example Request Bodies

#### `POST /api/characters` Example Request Body
```json
{
  "name": "Flygon",
  "description": "The Mystic Pokémon, known for kicking up sandstorms to hide itself while flying.",
  "region": "Hoenn",
  "type": "Ground/Dragon",
  "generation": "Generation III",
  "legendary": false,
  "imageUrl": "/images/Flygon.png",
  "evolveFrom": "Vibrava",
  "evolution": "None",
  "biology": "Flygon has large red covers that protect its eyes from sandstorms, a pair of lightweight green wings, and a tail ending in small, diamond-shaped segments.",
  "lore": "Known as the Desert Spirit, the flapping of its wings creates a melodic sound like a singing voice, which lures unsuspecting prey into blinding sandstorms.",
  "gameAppearances": "Pokemon Ruby, Sapphire, Emerald, Omega Ruby, Alpha Sapphire, Sword, Shield, Scarlet, Violet"
}