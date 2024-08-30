require_relative 'taskrepository'
require_relative 'taskcontroller'
require_relative 'router'

repository = TaskRepository.new
controller = TaskController.new(repository)
router = Router.new(controller)

router.run
