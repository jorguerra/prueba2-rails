module TasksHelper
  def get_qty
    current_user.progress.count
  end
end
