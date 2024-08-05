# lib/tasks/recalculate_stats.rake

namespace :recalculate do
  desc "Recalculate AVG and OPS for all players"
  task stats: :environment do
    Player.find_each do |player|
      player.calculate_avg
      player.calculate_ops
      player.save
    end
  end
end
