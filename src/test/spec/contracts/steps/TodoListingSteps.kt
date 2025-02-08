package com.windsurf.todo.spec.contracts

import java.time.LocalDateTime

/**
 * Contract for Todo Listing and Filtering steps.
 * This interface defines the behavior required to implement the todo listing feature.
 * Implementation will be provided in Phase 3.
 */
interface TodoListingSteps {
    /**
     * Background steps
     */
    fun todoApplicationIsRunning()
    fun onTodoListPage()
    fun setupExistingTodos(todos: List<TodoData>)
    fun clearAllTodos()
    
    /**
     * When steps
     */
    fun viewTodoList()
    fun filterByCompletionStatus(status: String)
    fun sortByPriority()
    fun sortByDueDate()
    fun filterByPriority(priority: String)
    
    /**
     * Then steps
     */
    fun verifyTodoCount(expectedCount: Int)
    fun verifyTodosInCreationDateOrder()
    fun verifyTodoDetails()
    fun verifyTodoInList(title: String)
    fun verifyTodoNotInList(title: String)
    fun verifyTodoOrder(expectedOrder: List<TodoOrderData>)
    fun verifyEmptyListMessage()
    fun verifyCreateTodoButton()
}

/**
 * Data class for setting up test todos
 */
data class TodoData(
    val title: String,
    val description: String?,
    val dueDate: LocalDateTime?,
    val priority: String,
    val completed: Boolean
)

/**
 * Data class for verifying todo order
 */
data class TodoOrderData(
    val title: String,
    val orderValue: String // priority or due date
)
