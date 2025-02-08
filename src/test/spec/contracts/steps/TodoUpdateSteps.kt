package com.windsurf.todo.spec.contracts

import java.time.LocalDateTime

/**
 * Contract for Todo Update steps.
 * This interface defines the behavior required to implement the todo update feature.
 * Implementation will be provided in Phase 3.
 */
interface TodoUpdateSteps {
    /**
     * Background steps
     */
    fun todoApplicationIsRunning()
    fun onTodoListPage()
    fun createTodoWithDetails(todoData: TodoData)
    
    /**
     * When steps
     */
    fun selectTodo(title: String)
    fun changeTitle(newTitle: String)
    fun changeDescription(newDescription: String)
    fun changeDueDate(newDate: LocalDateTime)
    fun changePriority(newPriority: String)
    fun markAsComplete()
    fun markAsIncomplete()
    fun saveChanges()
    fun cancelUpdate()
    fun tryToSaveChanges()
    
    /**
     * Then steps
     */
    fun verifyTodoUpdated()
    fun verifyTodoNotUpdated()
    fun verifyTodoTitle(expectedTitle: String)
    fun verifyTodoDescription(expectedDescription: String)
    fun verifyTodoDueDate(expectedDate: LocalDateTime)
    fun verifyTodoPriority(expectedPriority: String)
    fun verifyTodoComplete()
    fun verifyTodoIncomplete()
    fun verifySuccessMessage()
    fun verifyValidationError(expectedMessage: String)
    fun verifyModifiedTimestampUpdated()
    
    /**
     * Given steps
     */
    fun markTodoAsComplete(title: String)
}
