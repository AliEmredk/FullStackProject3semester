dotnet tool install -g dotnet-ef
dotnet ef dbcontext scaffold "Server=ep-nameless-scene-agbj7qqp-pooler.c-2.eu-central-1.aws.neon.tech;DB=neondb;UID=neondb_owner;PWD=npg_erGOQ8I3cbkT;SslMode=require" Npgsql.EntityFrameworkCore.PostgreSQL \
    --output-dir ./Entities \
    --context-dir . \
    --context MyDbContext \
    --no-onconfiguring \
    --namespace efscaffold.Entities \
    --context-namespace Infrastructure.Postgres.Scaffolding \
    --schema todosystem \
    --force