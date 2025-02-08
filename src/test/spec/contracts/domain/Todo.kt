package test.spec.contracts.domain

import java.time.LocalDateTime

interface Todo {
    val id: String
    val title: String
    val description: String?
    val dueDate: LocalDateTime?
    val priority: Priority
    val completed: Boolean
    val createdAt: LocalDateTime
    val modifiedAt: LocalDateTime

    fun validate(): ValidationResult
    fun update(title: String?, description: String?, dueDate: LocalDateTime?, priority: Priority?): ValidationResult
    fun toggleCompletion(): Todo
    
    enum class Priority {
        LOW, MEDIUM, HIGH
    }
    
    data class ValidationResult(
        val isValid: Boolean,
        val errors: List<ValidationError> = emptyList()
    )
    
    enum class ValidationError {
        TITLE_REQUIRED,
        TITLE_TOO_LONG,
        DESCRIPTION_TOO_LONG,
        DUE_DATE_IN_PAST
    }
}
