module ApplicationHelper
  def toggle_direction(direction)
    direction == 'asc' ? 'desc' : 'asc'
  end
end
