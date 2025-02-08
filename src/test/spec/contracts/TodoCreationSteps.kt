package com.windsurf.todo.spec.contracts

import java.time.LocalDateTime

/**
 * Contract for Todo Creation steps.
 * This interface defines the behavior required to implement the todo creation feature.
 * Implementation will be provided in Phase 3.
 */
interface TodoCreationSteps {
    /**
     * Background steps
     */
    fun todoApplicationIsRunning()
    fun onTodoCreationPage()
    
    /**
     * When steps
     */
    fun enterTitle(title: String)
    fun enterDescription(description: String)
    fun enterDescriptionWithLength(length: Int)
    fun setDueDate(date: LocalDateTime)
    fun setPriority(priority: String)
    fun submitTodo()
    fun submitTodoWithoutTitle()
    fun enterTitleWithLength(length: Int)
    
    /**
     * Then steps
     */
    fun verifyTodoCreated()
    fun verifyResponseIncludesTodoId()
    fun verifyTodoHasTitle(expectedTitle: String)
    fun verifyTodoHasDescription(expectedDescription: String)
    fun verifyTodoHasDueDate(expectedDate: LocalDateTime)
    fun verifyTodoHasPriority(expectedPriority: String)
    fun verifyTodoIsIncomplete()
    fun verifySuccessMessage()
    fun verifyNoTodoCreated()
    fun verifyValidationError(expectedMessage: String)
    fun verifyNoDescription()
    fun verifyNoDueDate()
}
