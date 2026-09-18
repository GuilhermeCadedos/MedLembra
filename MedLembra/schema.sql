CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  contact TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL,
  birth_date TEXT NOT NULL,
  image BLOB,
  image_type TEXT
);

CREATE UNIQUE INDEX IF NOT EXISTS users_contact_unique
ON users (lower(contact));
