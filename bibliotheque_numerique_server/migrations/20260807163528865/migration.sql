BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "notification" (
    "id" bigserial PRIMARY KEY,
    "titre" text NOT NULL,
    "message" text NOT NULL,
    "lu" boolean NOT NULL DEFAULT false,
    "dateCreation" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "destinataireType" text NOT NULL,
    "destinataireId" bigint NOT NULL
);

-- Indexes
CREATE INDEX "notification_destinataire_idx" ON "notification" USING btree ("destinataireType", "destinataireId");


--
-- MIGRATION VERSION FOR bibliotheque_numerique
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bibliotheque_numerique', '20260807163528865', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260807163528865', "timestamp" = now();

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
