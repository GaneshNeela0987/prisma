-- CreateTable
CREATE TABLE "roleModel" (
    "id" SERIAL NOT NULL,
    "roleName" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "roleModel_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "roleModel" ADD CONSTRAINT "roleModel_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
