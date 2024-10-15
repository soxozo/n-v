/*
  Warnings:

  - You are about to drop the column `uachieve` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `ubooking` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `uclient` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `ucreatedAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `uemail` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `ufname` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `ulevel` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `ulname` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `umobile` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `upassword` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `upicUrl` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `usendout` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `usuccess` on the `User` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[email]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `email` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `firstname` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lastname` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "User_uemail_key";

-- AlterTable
ALTER TABLE "User" DROP COLUMN "uachieve",
DROP COLUMN "ubooking",
DROP COLUMN "uclient",
DROP COLUMN "ucreatedAt",
DROP COLUMN "uemail",
DROP COLUMN "ufname",
DROP COLUMN "ulevel",
DROP COLUMN "ulname",
DROP COLUMN "umobile",
DROP COLUMN "upassword",
DROP COLUMN "upicUrl",
DROP COLUMN "usendout",
DROP COLUMN "usuccess",
ADD COLUMN     "achieve" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "booking" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "client" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "email" VARCHAR(100) NOT NULL,
ADD COLUMN     "firstname" VARCHAR(50) NOT NULL,
ADD COLUMN     "lastname" VARCHAR(50) NOT NULL,
ADD COLUMN     "level" INTEGER NOT NULL DEFAULT 5,
ADD COLUMN     "mobile" INTEGER,
ADD COLUMN     "password" TEXT NOT NULL,
ADD COLUMN     "picUrl" TEXT,
ADD COLUMN     "sendout" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "success" INTEGER NOT NULL DEFAULT 0;

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
