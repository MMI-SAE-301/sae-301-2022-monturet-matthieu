--
-- code pour la création des tables
--
CREATE TABLE Utilisateur (
  "id_user" int,
  "Nom_user" varchar(50),
  "Prenom_user" varchar(50),
  PRIMARY KEY ('id_user')
);

CREATE TABLE Matériau (
  "Id_materiau" int,
  "Libelle_materiau",
  PRIMARY KEY ('Id_materiau')
);

CREATE TABLE Montre (
  "Id_montre" int,
  "Ecran_montre" varchar(50),
  "Boitier_montre" varchar(50),
  "Bracelet_montre" varchar(50),
  "id_user" int,
  "Id_materiau" int,
  PRIMARY KEY ('Id_montre'),
  FOREIGN KEY (id_user) REFERENCES Utilisateur (id_user),
  FOREIGN KEY (Id_materiau) REFERENCES Matériau ("Id_materiau")
);

--
-- code pour la création des vues
--
CREATE VIEW allmontres AS
SELECT *
FROM "Montre";

CREATE VIEW allusers AS
SELECT *
FROM "Utilisateur";

CREATE VIEW allMatériaux AS
SELECT "Matériau".*
FROM "Matériau", "Montre"
WHERE "Matériau"."Id_materiau" = "Montre"."Id_materiau"
AND "Matériau"."Libelle_materiau" = "Boitier_montre"
AND "Matériau"."Libelle_materiau" = "Bracelet_montre";




--
-- code pour la création des policies
--
-- Pour toutes les tables :
CREATE POLICY "Enable read access for all users" ON "public"."Matériau"
AS PERMISSIVE FOR SELECT
TO public
USING (true)

-- Pour la table Montre :
CREATE POLICY "Enable insert for authenticated users only" ON "public"."Montre"
AS PERMISSIVE FOR INSERT
TO authenticated
WITH CHECK ((uid() = id_user))

CREATE POLICY "Enable update for authenticated users" ON "public"."Montre"
AS PERMISSIVE FOR UPDATE
TO authenticated
USING ((uid() = id_user))
WITH CHECK ((uid() IN ( SELECT allmontres.id_user FROM allmontres)))
