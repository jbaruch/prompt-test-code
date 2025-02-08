package com.windsurf.todo.spec.contracts

import java.time.LocalDateTime

/**
 * Contract for Todo Details steps.
 * This interface defines the behavior required to implement the todo details feature.
 * Implementation will be provided in Phase 3.
 */
interface TodoDetailsSteps {
    /**
     * Background steps
     */
    fun todoApplicationIsRunning()
    fun onTodoListPage()
    fun createTodoWithDetails(todoData: TodoData)
    
    /**
     * When steps
     */
    fun clickOnTodo(title: String)
    fun tryViewTodoById(id: String)
    fun tryDeleteTodoById(id: String)
    
    /**
     * Then steps
     */
    fun verifyTodoDetailsView()
    fun verifyTodoTitle(expectedTitle: String)
    fun verifyTodoDescription(expectedDescription: String)
    fun verifyTodoDueDate(expectedDate: LocalDateTime)
    fun verifyTodoPriority(expectedPriority: String)
    fun verifyCreationTimestamp()
    fun verifyModifiedTimestamp()
    fun verify404Error()
    fun verifyRedirectToList()
    fun verifyCurrentPage()
}
