class Task
  attr_reader :description
  def initialize(description)
    @description = description
    @is_task_done = false
  end

  def done?
    return @is_task_done
  end

  def mark_as_done!
    @is_task_done = true
  end
end
