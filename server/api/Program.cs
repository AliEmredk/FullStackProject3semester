using efscaffold.Entities;
using Infrastructure.Postgres.Scaffolding;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<MyDbContext>(conf =>
{
    conf.UseNpgsql("Server=ep-nameless-scene-agbj7qqp-pooler.c-2.eu-central-1.aws.neon.tech;DB=neondb;UID=neondb_owner;PWD=npg_erGOQ8I3cbkT;SslMode=require");
});

var app = builder.Build();

app.MapGet("/", ([FromServices]MyDbContext dbContext) =>
{
    var myTodo = new Todo()
    {
        Description = "Test",
        Title = "test title",
        Id = Guid.NewGuid().ToString(),
        Isdone = false,
        Priority = 5
    };
    dbContext.Todos.Add(myTodo);
    dbContext.SaveChanges();
    var objects = dbContext.Todos.ToList();
    return objects;
});

app.Run();
