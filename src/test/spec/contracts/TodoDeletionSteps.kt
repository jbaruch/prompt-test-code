package com.windsurf.todo.spec.contracts

/**
 * Contract for Todo Deletion steps.
 * This interface defines the behavior required to implement the todo deletion feature.
 * Implementation will be provided in Phase 3.
 */
interface TodoDeletionSteps {
    /**
     * Background steps
     */
    fun todoApplicationIsRunning()
    fun onTodoListPage()
    fun setupExistingTodos(todos: List<TodoData>)
    fun ensureSingleTodoExists()
    
    /**
     * When steps
     */
    fun selectTodo(title: String)
    fun clickDeleteButton()
    fun confirmDeletion()
    fun cancelDeletion()
    fun deleteTodo()
    fun selectDeleteCompletedTodos()
    fun confirmBulkDeletion()
    
    /**
     * Then steps
     */
    fun verifyTodoDeleted()
    fun verifyTodoNotDeleted()
    fun verifyTodoNotInList(title: String)
    fun verifyTodoInList(title: String)
    fun verifyTodoCount(expectedCount: Int)
    fun verifyEmptyListMessage()
    fun verifyCreateTodoButton()
    fun verifyCompletedTodosDeleted()
    fun verifySuccessMessage()
}
