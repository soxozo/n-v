/*
  Warnings:

  - You are about to drop the column `achieve` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `booking` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `client` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `level` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `mobile` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `picUrl` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `sendOut` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `success` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "achieve",
DROP COLUMN "booking",
DROP COLUMN "client",
DROP COLUMN "level",
DROP COLUMN "mobile",
DROP COLUMN "picUrl",
DROP COLUMN "sendOut",
DROP COLUMN "success";
