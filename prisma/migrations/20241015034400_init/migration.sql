-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "ufname" VARCHAR(50) NOT NULL,
    "ulname" VARCHAR(50) NOT NULL,
    "uemail" VARCHAR(100) NOT NULL,
    "umobile" INTEGER,
    "ulevel" INTEGER NOT NULL DEFAULT 5,
    "usendout" INTEGER NOT NULL DEFAULT 0,
    "usuccess" INTEGER NOT NULL DEFAULT 0,
    "uachieve" INTEGER NOT NULL DEFAULT 0,
    "ubooking" INTEGER NOT NULL DEFAULT 0,
    "uclient" INTEGER NOT NULL DEFAULT 0,
    "upassword" TEXT NOT NULL,
    "upicUrl" TEXT,
    "ucreatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_uemail_key" ON "User"("uemail");
