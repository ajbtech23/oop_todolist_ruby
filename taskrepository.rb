class TaskRepository
  def initialize
    @tasks = []
  end

  def create(task)
    @tasks << task
  end

  def all
    return @tasks
  end

  def find(index)
    return @tasks[index]
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end
