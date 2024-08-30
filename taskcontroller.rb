require_relative 'task'
require_relative 'taskview'

class TaskController
  def initialize(repository)
    @repository = repository
    @view = TaskView.new
  end

  def list
    display_tasks
  end

  def add
    display_tasks
    description = @view.ask_user_for_description
    task = Task.new(description)
    @repository.create(task)
  end

  def mark_as_done
    display_tasks
    task_selection_index = @view.ask_user_to_mark_task_as_done
    task = @repository.find(task_selection_index)
    task.mark_as_done!
  end

  def remove
    display_tasks
    task_selection_index = @view.ask_user_to_remove_task_from_todo
    @repository.destroy(task_selection_index)
  end

  private

  def display_tasks
    tasks = @repository.all
    @view.display(tasks)
  end
end
