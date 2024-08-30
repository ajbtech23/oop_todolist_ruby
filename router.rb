class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    is_user_still_active = true

    while is_user_still_active
      print_actions
      action = gets.chomp.to_i
      if action == 5
        is_user_still_active = false
      else
        dispatch(action)
      end
    end
  end

  private

  def print_actions
    puts "\n---"
    puts "What do you want to do?"
    puts "1 - Display tasks"
    puts "2 - Add a new task"
    puts "3 - Mark a task as done"
    puts "4 - Remove a task"
    puts "5 - Quite the ToDo List App"
    puts "---\n"
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.mark_as_done
    when 4 then @controller.remove
    else
      puts "Please type 1, 2, 3, 4 or 5 :D"
    end
  end
end
