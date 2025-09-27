#I deleted !/bin/bash if you have time try to find out is it necessary and what exactly does
set -a
#this says, it is reading from .env file then will source $CONN_STR placeholder from .env file
source .env
set +a

dotnet tool install -g dotnet-ef
dotnet ef dbcontext scaffold "$CONN_STR" Npgsql.EntityFrameworkCore.PostgreSQL \
    --output-dir ./Entities \
    --context-dir . \
    --context MyDbContext \
    --no-onconfiguring \
    --namespace efscaffold.Entities \
    --context-namespace Infrastructure.Postgres.Scaffolding \
    --schema todosystem \
    --force