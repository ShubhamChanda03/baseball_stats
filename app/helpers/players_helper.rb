module PlayersHelper
  def toggle_direction(direction)
    direction == 'asc' ? 'desc' : 'asc'
  end
end
