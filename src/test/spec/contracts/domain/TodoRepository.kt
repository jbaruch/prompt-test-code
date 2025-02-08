package test.spec.contracts.domain

interface TodoRepository {
    fun save(todo: Todo): Todo
    fun findById(id: String): Todo?
    fun findAll(): List<Todo>
    fun findAllByCompleted(completed: Boolean): List<Todo>
    fun deleteById(id: String): Boolean
    fun deleteAllCompleted(): Int
    
    fun findAllSortedByDueDate(): List<Todo>
    fun findAllSortedByPriority(): List<Todo>
}
