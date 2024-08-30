class TaskView

  def display(tasks)
    tasks.each_with_index do |task, index|
      checkbox_status = task.done? ? "[x]" : "[]"
      puts "#{checkbox_status} #{index + 1} - #{task.description}"
    end
  end

  def ask_user_for_description
    puts "What do you want to do?"
    return gets.chomp
  end

  def ask_user_for_index
    return gets.chomp.to_i - 1
  end

  def ask_user_to_mark_task_as_done
    puts "Which task have you managed to complete? Enter the number corresponding to completed task"
    return ask_user_for_index
  end

  def ask_user_to_remove_task_from_todo
    puts "Which task do you want to remove completely from your todo list? Enter the number corresponding to the task to be removed"
    return ask_user_for_index
  end
end
