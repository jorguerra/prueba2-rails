class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  end

  def complete
    complete = Progress.new
    complete.user = current_user
    complete.task_id = params[:task]
    complete.save
    redirect_to root_path
  end

  def uncomplete
    progress = Progress.find_by( {task: params[:task], user: current_user })
    progress.destroy
    redirect_to root_path
  end

end
