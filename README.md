# Unified Intake Service

## 🚀 Postman Testing Guide

### 1. Import the Collection
1. Download the file: `unified-intake-service.postman_collection.json` (provided with this repo).
2. Open **Postman** → click **Import** → choose this file.
3. You’ll now see a new collection called **Unified Intake Service**.

### 2. Set Environment Variables
In Postman, create a new environment and set:

| Key          | Value (example)                       |
|--------------|---------------------------------------|
| `BASE_URL`   | `https://your-vercel-app.vercel.app`  |
| `ADMIN_USER` | `admin`                               |
| `ADMIN_PASS` | `supersecret`                         |

These must match your Vercel environment variables.

### 3. Authenticate
1. Run the **Login** request.
2. If successful, a session cookie is returned.
3. Postman will automatically attach the cookie for later `/admin/...` calls.

### 4. Explore Endpoints
- **List Flows** → all intake flows
- **List Queues** → MongoDB queues and counts
- **Get Submissions** → fetch queue data
- **List Prompts** → available AI prompt files
- **Get Prompt** → returns a specific `.prompt.md` file
- **Sample Intake (Auto)** → submit test data

### 5. Example Test
1. Run **Sample Intake (Auto)** → sends JSON intake.
2. Run **Get Submissions** (`queue=auto_queue`) → see the stored record in MongoDB.
3. Run **List Prompts** → pick one and fetch via **Get Prompt (auto_bot)**.

---
