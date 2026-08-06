BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "auteur" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "auteur" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "email" text NOT NULL,
    "languePreferee" text,
    "dateCreation" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "authUserId" uuid NOT NULL,
    "biographie" text
);

-- Indexes
CREATE UNIQUE INDEX "auteur_authuserid_unique_idx" ON "auteur" USING btree ("authUserId");

--
-- ACTION DROP TABLE
--
DROP TABLE "lecteur" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "lecteur" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "email" text NOT NULL,
    "languePreferee" text,
    "dateCreation" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "authUserId" uuid NOT NULL,
    "essaiPremiumUtilise" boolean NOT NULL DEFAULT false
);

-- Indexes
CREATE UNIQUE INDEX "lecteur_authuserid_unique_idx" ON "lecteur" USING btree ("authUserId");

--
-- ACTION DROP TABLE
--
DROP TABLE "superadmin" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "superadmin" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "email" text NOT NULL,
    "languePreferee" text,
    "dateCreation" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "authUserId" uuid NOT NULL,
    "niveauAcces" text
);

-- Indexes
CREATE UNIQUE INDEX "superadmin_authuserid_unique_idx" ON "superadmin" USING btree ("authUserId");


--
-- MIGRATION VERSION FOR bibliotheque_numerique
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bibliotheque_numerique', '20260804223641974', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260804223641974', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260129180959368', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129180959368', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20260213194423028', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260213194423028', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20260129181112269', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129181112269', "timestamp" = now();


COMMIT;
