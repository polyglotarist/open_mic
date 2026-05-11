# Open Mic — Rails API Backend

REST API backend for Open Mic, a music discovery platform where users can browse and manage songs, artists, categories, and chord charts. Pairs with the [open_mic_vue](https://github.com/polyglotarist/open_mic_vue) Vue.js frontend.

## Features

- JWT authentication (register, login, protected routes)
- Full CRUD for Songs, Artists, Categories, and Chords
- Search/filter by name on index endpoints
- Password hashing with bcrypt
- JSON responses via Jbuilder views
- CORS configured for local Vue dev server

## Tech Stack

- **Ruby** 2.5.3
- **Rails** 5.2
- **PostgreSQL**
- **JWT** + **bcrypt** for auth
- **rack-cors** for cross-origin requests
- **Jbuilder** for JSON views

## API Endpoints

| Method | Path | Description |
|--------|------|-------------|
| POST | `/api/sessions` | Login — returns JWT token |
| GET/POST | `/api/users` | List users / Register |
| GET/PATCH/DELETE | `/api/users/:id` | Show / Update / Delete user |
| GET/POST | `/api/songs` | List songs (supports `?search=`) / Create |
| GET/PATCH/DELETE | `/api/songs/:id` | Show / Update / Delete song |
| GET/POST | `/api/artists` | List artists / Create |
| GET/PATCH/DELETE | `/api/artists/:id` | Show / Update / Delete artist |
| GET/POST | `/api/categories` | List categories / Create |
| GET/PATCH/DELETE | `/api/categories/:id` | Show / Update / Delete category |
| GET/POST | `/api/chords` | List chords / Create |
| GET/PATCH/DELETE | `/api/chords/:id` | Show / Update / Delete chord |

## Setup

### Prerequisites

- Ruby 2.5.3 (use rbenv or rvm)
- PostgreSQL running locally

### Installation

```bash
git clone https://github.com/polyglotarist/open_mic.git
cd open_mic
bundle install
```

### Database

```bash
rails db:create
rails db:migrate
rails db:seed   # optional sample data
```

### Run

```bash
rails server
# API available at http://localhost:3000
```

The Vue frontend dev server runs on port 8080 and proxies API requests to port 3000.

## Authentication

Send the JWT token returned from `POST /api/sessions` in the `Authorization` header:

```
Authorization: Bearer <token>
```

## Related

- Frontend: [open_mic_vue](https://github.com/polyglotarist/open_mic_vue)
