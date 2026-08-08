BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "avis" ADD COLUMN "reponseAuteur" text;
ALTER TABLE "avis" ADD COLUMN "dateReponseAuteur" timestamp without time zone;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "changement_statut" ADD COLUMN "proposeParId" bigint;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "changement_statut"
    ADD CONSTRAINT "changement_statut_fk_2"
    FOREIGN KEY("proposeParId")
    REFERENCES "superadmin"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR bibliotheque_numerique
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bibliotheque_numerique', '20260808004628974', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260808004628974', "timestamp" = now();

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
