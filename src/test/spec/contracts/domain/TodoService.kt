package test.spec.contracts.domain

import java.time.LocalDateTime

interface TodoService {
    fun createTodo(
        title: String,
        description: String?,
        dueDate: LocalDateTime?,
        priority: Todo.Priority
    ): ServiceResult<Todo>
    
    fun updateTodo(
        id: String,
        title: String?,
        description: String?,
        dueDate: LocalDateTime?,
        priority: Todo.Priority?
    ): ServiceResult<Todo>
    
    fun toggleTodoCompletion(id: String): ServiceResult<Todo>
    fun deleteTodo(id: String): ServiceResult<Unit>
    fun deleteCompletedTodos(): ServiceResult<Int>
    
    fun getTodo(id: String): ServiceResult<Todo>
    fun getAllTodos(): ServiceResult<List<Todo>>
    fun getCompletedTodos(): ServiceResult<List<Todo>>
    fun getTodosSortedByDueDate(): ServiceResult<List<Todo>>
    fun getTodosSortedByPriority(): ServiceResult<List<Todo>>
    
    sealed class ServiceResult<out T> {
        data class Success<T>(val data: T) : ServiceResult<T>()
        data class Error(val error: ServiceError) : ServiceResult<Nothing>()
    }
    
    sealed class ServiceError {
        object TodoNotFound : ServiceError()
        data class ValidationFailed(val errors: List<Todo.ValidationError>) : ServiceError()
        data class SystemError(val message: String) : ServiceError()
    }
}
