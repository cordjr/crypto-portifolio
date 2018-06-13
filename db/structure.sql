CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "coins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "symbol" varchar, "name" varchar, "last_price" decimal, "icon_path" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "last_price_update" datetime);
CREATE TABLE "portfolios" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "portfolio_events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "coin_id" integer, "unit_price" decimal, "amount" decimal, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "type" enum);
INSERT INTO schema_migrations (version) VALUES ('20180612214650');

INSERT INTO schema_migrations (version) VALUES ('20180612214928');

INSERT INTO schema_migrations (version) VALUES ('20180612215949');

INSERT INTO schema_migrations (version) VALUES ('20180612220817');

INSERT INTO schema_migrations (version) VALUES ('20180612220932');

