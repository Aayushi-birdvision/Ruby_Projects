class Tournament
    def self.tally(input)
      team_results = input.split("\n").each_with_object(empty_table) do |line, teams|
        team_a, team_b, result = line.split ";"
        case result
          when "win"
            teams[team_a].win!
            teams[team_b].lose!
          when "draw"
            teams[team_a].draw!
            teams[team_b].draw!
          when "loss"
            teams[team_a].lose!
            teams[team_b].win!
          else
            raise ArgumentError.new "#{result} is not a valid result"
        end
      end
      stats_rows = team_results.values
        .sort_by{|team| [-team.points, team.name] }
        .map {|team| stats team }
      header + stats_rows.join
    end
    private
    def self.empty_table
      Hash.new {|table, team_name| table[team_name] = Team.new team_name }
    end
    def self.header
      format_row("Team", ["MP", "W", "D", "L", "P"])
    end
    def self.stats(team)
      stats_data = [
        team.matches_played, 
        team.wins, 
        team.draws, 
        team.losses, 
        team.points
      ].map { |item| item.to_s }
      format_row(team.name, stats_data)
    end
    def self.format_row(row_title, data)
      ([row_title.ljust(30, " ")] + data.map { |item| item.rjust(2, " ") }).join(" | ") + "\n"
    end
  end
  class Team
    attr_reader :name, :wins, :losses, :draws
    def initialize(name)
      @name = name
      @wins = @losses = @draws = @points = 0
    end
    def win!
      @wins += 1
    end
    def draw!
      @draws += 1
    end
    def lose!
      @losses += 1
    end
    def points
      wins * 3 + draws
    end
    def matches_played
      wins + losses + draws
    end
  end