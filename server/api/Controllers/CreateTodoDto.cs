namespace api.Controllers;

//records are convention for data transfer objects
public record CreateTodoDto(int priority, string title, string description);