-- CreateTable
CREATE TABLE "Candidates" (
    "Id" SERIAL NOT NULL,
    "cv" INTEGER,
    "nameth" VARCHAR(50),
    "surnameth" VARCHAR(50),
    "nameen" VARCHAR(50),
    "surnameen" VARCHAR(50),
    "email" VARCHAR(50) NOT NULL,
    "mobile" INTEGER NOT NULL,
    "position" VARCHAR(50) NOT NULL,
    "age" INTEGER,
    "gender" VARCHAR(10),
    "expect" INTEGER,
    "university1" VARCHAR(100),
    "major1" VARCHAR(100),
    "gpa1" INTEGER,
    "university2" VARCHAR(100),
    "major2" VARCHAR(100),
    "gpa2" INTEGER,
    "university3" VARCHAR(100),
    "major3" VARCHAR(100),
    "gpa3" INTEGER,
    "skill" TEXT,
    "certificate" TEXT,
    "experience1" TEXT,
    "responsibility1" TEXT,
    "leave1" TEXT,
    "experience2" TEXT,
    "responsibility2" TEXT,
    "leave2" TEXT,
    "experience3" TEXT,
    "responsibility3" TEXT,
    "leave3" TEXT,
    "experience4" TEXT,
    "responsibility4" TEXT,
    "leave4" TEXT,
    "experience5" TEXT,
    "responsibility5" TEXT,
    "leave5" TEXT,
    "experience6" TEXT,
    "responsibility6" TEXT,
    "leave6" TEXT,
    "createDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateDate" TIMESTAMP(3),
    "updateBy" VARCHAR(50),
    "grade" VARCHAR(10),
    "testscore" VARCHAR(50),
    "consent" BOOLEAN NOT NULL DEFAULT true,
    "type" VARCHAR(50),
    "status" VARCHAR(100),
    "comment1" TEXT,
    "commentby1" TEXT,
    "comment2" TEXT,
    "commentby2" TEXT,
    "comment3" TEXT,
    "commentby3" TEXT,
    "booking" BOOLEAN,
    "bookingDate" TIMESTAMP(3),
    "bookingBy" VARCHAR(50),
    "startDate" TIMESTAMP(3),
    "picUrl" TEXT,

    CONSTRAINT "Candidates_pkey" PRIMARY KEY ("Id")
);
