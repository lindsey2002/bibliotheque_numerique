BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "abonnement" (
    "id" bigserial PRIMARY KEY,
    "type" text NOT NULL,
    "dateDebut" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateFin" timestamp without time zone,
    "prix" double precision NOT NULL,
    "essaiPremiumActif" boolean NOT NULL DEFAULT false,
    "dateFinEssaiPremium" timestamp without time zone,
    "lecteurId" bigint NOT NULL
);

-- Indexes
CREATE INDEX "abonnement_lecteur_idx" ON "abonnement" USING btree ("lecteurId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "ambiance_sonore" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "fichierAudio" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "ambiance_nom_unique_idx" ON "ambiance_sonore" USING btree ("nom");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "auteur" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "email" text NOT NULL,
    "motDePasse" text NOT NULL,
    "languePreferee" text,
    "dateCreation" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "biographie" text
);

-- Indexes
CREATE UNIQUE INDEX "auteur_email_unique_idx" ON "auteur" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "avis" (
    "id" bigserial PRIMARY KEY,
    "note" bigint NOT NULL,
    "commentaire" text,
    "dateAvis" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "lecteurId" bigint NOT NULL,
    "livreId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "avis_unique_idx" ON "avis" USING btree ("lecteurId", "livreId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "categorie" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "categorie_nom_unique_idx" ON "categorie" USING btree ("nom");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "changement_statut" (
    "id" bigserial PRIMARY KEY,
    "ancienStatut" text NOT NULL,
    "nouveauStatut" text NOT NULL,
    "messageAdmin" text,
    "reponseAuteur" boolean,
    "dateProposition" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateReponse" timestamp without time zone,
    "livreId" bigint NOT NULL,
    "auteurId" bigint NOT NULL
);

-- Indexes
CREATE INDEX "changement_livre_idx" ON "changement_statut" USING btree ("livreId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "decision" (
    "id" bigserial PRIMARY KEY,
    "etat" text NOT NULL DEFAULT 'enAttente'::text,
    "justificationAuteur" text,
    "dateDecision" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "livreId" bigint NOT NULL,
    "superAdminId" bigint NOT NULL
);

-- Indexes
CREATE INDEX "decision_livre_idx" ON "decision" USING btree ("livreId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "favoris" (
    "id" bigserial PRIMARY KEY,
    "dateAjout" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "lecteurId" bigint NOT NULL,
    "livreId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "favoris_unique_idx" ON "favoris" USING btree ("lecteurId", "livreId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "langue" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "code" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "langue_nom_unique_idx" ON "langue" USING btree ("nom");
CREATE UNIQUE INDEX "langue_code_unique_idx" ON "langue" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "lecteur" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "email" text NOT NULL,
    "motDePasse" text NOT NULL,
    "languePreferee" text,
    "dateCreation" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "essaiPremiumUtilise" boolean NOT NULL DEFAULT false
);

-- Indexes
CREATE UNIQUE INDEX "lecteur_email_unique_idx" ON "lecteur" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "lecture" (
    "id" bigserial PRIMARY KEY,
    "datePremiereLecture" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "pourcentageLu" bigint NOT NULL,
    "moisAnnee" text NOT NULL,
    "montantCommission" double precision,
    "lecteurId" bigint NOT NULL,
    "livreId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "lecture_unique_idx" ON "lecture" USING btree ("lecteurId", "livreId", "moisAnnee");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "livre" (
    "id" bigserial PRIMARY KEY,
    "titre" text NOT NULL,
    "description" text,
    "dateSoumission" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "modeAudio" text NOT NULL DEFAULT 'aucun'::text,
    "statutPrix" text NOT NULL DEFAULT 'gratuit'::text,
    "auteurId" bigint NOT NULL,
    "categorieId" bigint NOT NULL,
    "langueId" bigint NOT NULL,
    "ambianceId" bigint
);

-- Indexes
CREATE INDEX "livre_auteur_idx" ON "livre" USING btree ("auteurId");
CREATE INDEX "livre_categorie_idx" ON "livre" USING btree ("categorieId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "paiement" (
    "id" bigserial PRIMARY KEY,
    "montant" double precision NOT NULL,
    "date" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "mode" text NOT NULL,
    "abonnementId" bigint NOT NULL
);

-- Indexes
CREATE INDEX "paiement_abonnement_idx" ON "paiement" USING btree ("abonnementId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "superadmin" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "email" text NOT NULL,
    "motDePasse" text NOT NULL,
    "languePreferee" text,
    "dateCreation" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "niveauAcces" text
);

-- Indexes
CREATE UNIQUE INDEX "superadmin_email_unique_idx" ON "superadmin" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "taux_commission" (
    "id" bigserial PRIMARY KEY,
    "valeur" double precision NOT NULL,
    "dateDebut" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateFin" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "versement" (
    "id" bigserial PRIMARY KEY,
    "mois" text NOT NULL,
    "montantBrut" double precision NOT NULL,
    "montantNet" double precision NOT NULL,
    "nbLecteursUniques" bigint NOT NULL,
    "auteurId" bigint NOT NULL,
    "tauxId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "versement_unique_idx" ON "versement" USING btree ("auteurId", "mois");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "abonnement"
    ADD CONSTRAINT "abonnement_fk_0"
    FOREIGN KEY("lecteurId")
    REFERENCES "lecteur"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "avis"
    ADD CONSTRAINT "avis_fk_0"
    FOREIGN KEY("lecteurId")
    REFERENCES "lecteur"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "avis"
    ADD CONSTRAINT "avis_fk_1"
    FOREIGN KEY("livreId")
    REFERENCES "livre"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "changement_statut"
    ADD CONSTRAINT "changement_statut_fk_0"
    FOREIGN KEY("livreId")
    REFERENCES "livre"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "changement_statut"
    ADD CONSTRAINT "changement_statut_fk_1"
    FOREIGN KEY("auteurId")
    REFERENCES "auteur"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "decision"
    ADD CONSTRAINT "decision_fk_0"
    FOREIGN KEY("livreId")
    REFERENCES "livre"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "decision"
    ADD CONSTRAINT "decision_fk_1"
    FOREIGN KEY("superAdminId")
    REFERENCES "superadmin"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "favoris"
    ADD CONSTRAINT "favoris_fk_0"
    FOREIGN KEY("lecteurId")
    REFERENCES "lecteur"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "favoris"
    ADD CONSTRAINT "favoris_fk_1"
    FOREIGN KEY("livreId")
    REFERENCES "livre"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "lecture"
    ADD CONSTRAINT "lecture_fk_0"
    FOREIGN KEY("lecteurId")
    REFERENCES "lecteur"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "lecture"
    ADD CONSTRAINT "lecture_fk_1"
    FOREIGN KEY("livreId")
    REFERENCES "livre"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "livre"
    ADD CONSTRAINT "livre_fk_0"
    FOREIGN KEY("auteurId")
    REFERENCES "auteur"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "livre"
    ADD CONSTRAINT "livre_fk_1"
    FOREIGN KEY("categorieId")
    REFERENCES "categorie"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "livre"
    ADD CONSTRAINT "livre_fk_2"
    FOREIGN KEY("langueId")
    REFERENCES "langue"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "livre"
    ADD CONSTRAINT "livre_fk_3"
    FOREIGN KEY("ambianceId")
    REFERENCES "ambiance_sonore"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "paiement"
    ADD CONSTRAINT "paiement_fk_0"
    FOREIGN KEY("abonnementId")
    REFERENCES "abonnement"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "versement"
    ADD CONSTRAINT "versement_fk_0"
    FOREIGN KEY("auteurId")
    REFERENCES "auteur"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "versement"
    ADD CONSTRAINT "versement_fk_1"
    FOREIGN KEY("tauxId")
    REFERENCES "taux_commission"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR bibliotheque_numerique
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bibliotheque_numerique', '20260804155911653', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260804155911653', "timestamp" = now();

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
