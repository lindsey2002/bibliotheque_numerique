BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "tarif_abonnement" (
    "id" bigserial PRIMARY KEY,
    "type" text NOT NULL,
    "prix" double precision NOT NULL,
    "dateDebut" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateFin" timestamp without time zone
);

--
-- ACTION DROP TABLE
--
DROP TABLE "taux_commission" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "taux_commission" (
    "id" bigserial PRIMARY KEY,
    "tauxPlateforme" double precision NOT NULL,
    "montantParLectureUnique" double precision NOT NULL,
    "seuilLecteursUniquesGratuit" bigint NOT NULL,
    "dateDebut" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateFin" timestamp without time zone
);


--
-- MIGRATION VERSION FOR bibliotheque_numerique
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bibliotheque_numerique', '20260805122428532', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260805122428532', "timestamp" = now();

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
