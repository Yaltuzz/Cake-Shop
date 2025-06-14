CREATE DATABASE users_db;

\c users_db

CREATE TABLE "users" (
    "id" SERIAL PRIMARY KEY,
    "email" VARCHAR(255) NOT NULL UNIQUE,
    "password" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP DEFAULT NOW()
);

CREATE TABLE "roles" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE "user_roles" (
    "user_id" INT NOT NULL,
    "role_id" INT NOT NULL,
    PRIMARY KEY ("user_id", "role_id"),
    FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY ("role_id") REFERENCES "roles" ("id") ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO roles ("name") VALUES ('Admin') ON CONFLICT DO NOTHING;

INSERT INTO roles ("name") VALUES ('User') ON CONFLICT DO NOTHING;

INSERT INTO
    Users (email, password)
VALUES (
        'example_user@example.com',
        'example_password'
    ),
    (
        'wiktor@interia.pl',
        'bigv123'
    ),
    ('admin@wp.pl', 'admin');

INSERT INTO
    user_roles (user_id, role_id)
SELECT u.id, r.id
FROM users u, roles r
WHERE
    u.email = 'admin@wp.pl'
    AND r.name = 'Admin';