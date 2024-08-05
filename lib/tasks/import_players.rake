# lib/tasks/import_players.rake
require 'nokogiri'

namespace :import do
  desc "Import player data from XML"
  task players: :environment do
    puts "Starting import..."

    # Read the XML file from the local path
    file_path = Rails.root.join('lib', '1998statistics.xml')
    xml = Nokogiri::XML(File.open(file_path))

    xml.xpath('//PLAYER').each do |player|
      surname = player.xpath('SURNAME').text
      given_name = player.xpath('GIVEN_NAME').text
      position = player.xpath('POSITION').text
      games = player.xpath('GAMES').text.to_i
      games_started = player.xpath('GAMES_STARTED').text.to_i
      at_bats = player.xpath('AT_BATS').text.to_i
      runs = player.xpath('RUNS').text.to_i
      hits = player.xpath('HITS').text.to_i
      doubles = player.xpath('DOUBLES').text.to_i
      triples = player.xpath('TRIPLES').text.to_i
      home_runs = player.xpath('HOME_RUNS').text.to_i
      rbi = player.xpath('RBI').text.to_i
      steals = player.xpath('STEALS').text.to_i
      caught_stealing = player.xpath('CAUGHT_STEALING').text.to_i
      sacrifice_hits = player.xpath('SACRIFICE_HITS').text.to_i
      sacrifice_flies = player.xpath('SACRIFICE_FLIES').text.to_i
      fielding_errors = player.xpath('ERRORS').text.to_i
      pb = player.xpath('PB').text.to_i
      walks = player.xpath('WALKS').text.to_i
      struck_out = player.xpath('STRUCK_OUT').text.to_i
      hit_by_pitch = player.xpath('HIT_BY_PITCH').text.to_i

      # Calculate AVG (Batting Average) and OPS (On-base Plus Slugging)
      avg = at_bats > 0 ? hits.to_f / at_bats : 0.0
      ops = at_bats > 0 ? (hits + walks + hit_by_pitch).to_f / at_bats : 0.0

      # Create the player record
      Player.create(
        surname: surname,
        given_name: given_name,
        position: position,
        games: games,
        games_started: games_started,
        at_bats: at_bats,
        runs: runs,
        hits: hits,
        doubles: doubles,
        triples: triples,
        home_runs: home_runs,
        rbi: rbi,
        steals: steals,
        caught_stealing: caught_stealing,
        sacrifice_hits: sacrifice_hits,
        sacrifice_flies: sacrifice_flies,
        fielding_errors: fielding_errors,
        pb: pb,
        walks: walks,
        struck_out: struck_out,
        hit_by_pitch: hit_by_pitch,
        avg: avg,
        ops: ops
      )
      puts "Importing player: #{given_name} #{surname}"
    end

    puts "Import complete!"
  end
end
