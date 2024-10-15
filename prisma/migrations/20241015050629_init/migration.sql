/*
  Warnings:

  - You are about to alter the column `name` on the `Member` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `surname` on the `Member` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.

*/
-- AlterTable
ALTER TABLE "Member" ADD COLUMN     "achieve" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "booking" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "client" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "level" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "mobile" INTEGER,
ADD COLUMN     "send" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "success" INTEGER NOT NULL DEFAULT 0,
ALTER COLUMN "name" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "surname" SET DATA TYPE VARCHAR(50);
