/*
  Warnings:

  - You are about to drop the column `comment1` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `comment2` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `comment3` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `commentby1` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `commentby2` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `commentby3` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `createdById` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `nameen` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `nameth` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `surnameen` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `surnameth` on the `Candidate` table. All the data in the column will be lost.
  - You are about to drop the column `testscore` on the `Candidate` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Candidate" DROP CONSTRAINT "Candidate_createdById_fkey";

-- AlterTable
ALTER TABLE "Candidate" DROP COLUMN "comment1",
DROP COLUMN "comment2",
DROP COLUMN "comment3",
DROP COLUMN "commentby1",
DROP COLUMN "commentby2",
DROP COLUMN "commentby3",
DROP COLUMN "createdById",
DROP COLUMN "nameen",
DROP COLUMN "nameth",
DROP COLUMN "surnameen",
DROP COLUMN "surnameth",
DROP COLUMN "testscore",
ADD COLUMN     "comment" TEXT,
ADD COLUMN     "name" VARCHAR(50),
ADD COLUMN     "score" VARCHAR(50),
ADD COLUMN     "surname" VARCHAR(50);
