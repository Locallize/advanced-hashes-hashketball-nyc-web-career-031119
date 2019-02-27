require 'pry'

def game_hash
  {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black","White"],
    :players => {
      "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      }, 
      "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
  },
   :away => {
     :team_name => "Charlotte Hornets",
     :colors => ["Turquoise","Purple"],
     :players => {
       "Jeff Adrien"=> {
         :number => 4,
         :shoe => 18,
         :points => 10,
         :rebounds => 1,
         :assists => 1,
         :steals => 2,
         :blocks => 7,
         :slam_dunks => 2
     },
     "Bismak Biyombo"=> {
         :number => 0,
         :shoe => 16,
         :points => 12,
         :rebounds => 4,
         :assists => 7,
         :steals => 7,
         :blocks => 15,
         :slam_dunks => 10
     },
     "DeSagna Diop"=> {
         :number => 2,
         :shoe => 14,
         :points => 24,
         :rebounds => 12,
         :assists => 12,
         :steals => 4,
         :blocks => 5,
         :slam_dunks => 5
     },
     "Ben Gordon"=> {
         :number => 8,
         :shoe => 15,
         :points => 33,
         :rebounds => 3,
         :assists => 2,
         :steals => 1,
         :blocks => 1,
         :slam_dunks => 0
     },
     "Brendan Haywood"=> {
         :number => 33,
         :shoe => 15,
         :points => 6,
         :rebounds => 12,
         :assists => 12,
         :steals => 22,
         :blocks => 5,
         :slam_dunks => 12
     }
    }
   }
  }
end


def num_points_scored (player)
  points = Integer
  
  game_hash.each do |team,v|
    v[:players].each do |names, stats|
      if names == player
        points = stats[:points]
      end
    end
  end
 points
end

def shoe_size (player_name)
  player_shoe_size = Integer
  
  game_hash.each do |team,v|
    v[:players].each do |names, stats|
      if names == player_name
        player_shoe_size = stats[:shoe]
      end
    end
  end
  player_shoe_size
end

def team_colors (team_nam)
  team_color_array = []

  game_hash.each do |team, value|
    if value[:team_name] == team_nam
        team_color_array = value[:colors]
    end
  end
   team_color_array
end


def team_names
  names = []
  
    game_hash.each do |team, value|
      names << value[:team_name]
    end
      names
end


def player_numbers(team_name)
  player_numbers = []
  
  game_hash.each do |team, value|
    value[:players].each do |player, stats|
      if value[:team_name] == team_name
        player_numbers << stats[:number]
      end
    end
  end
  player_numbers
end


def player_stats (player_name)
  playerx_stat = Hash
  
  
  game_hash.each do |team, value| 
    value[:players].each do |name, stats|
      # binding.pry
      if name == player_name
      playerx_stat = stats
      end
    end
  end
  playerx_stat
end

# player_stats("Alan Anderson")

def big_shoe_rebounds
  shoe_size_array = []
  rebounds_array = []
  big_foot_rebounds = Integer
  
  game_hash.each do |team, value|
    value[:players].each do |name, stats|
      shoe_size_array << stats[:shoe]
    end
  end
max_shoe_size = shoe_size_array.max
  
  game_hash.each do |team, value|
    value[:players].each do |name, stats|
      if max_shoe_size == stats[:shoe]
        big_foot_rebounds = stats[:rebounds]
      end
    end  
  end
  
  big_foot_rebounds
end


# extra credit

def most_points_scored
  most_points = []
  high_scorer = String
  
   game_hash.each do |team, value|
    value[:players].each do |name, stats|
      most_points << stats[:points]
    end
  end
  
 max_points = most_points.max
  
   game_hash.each do |team, value|
    value[:players].each do |name, stats|
      if  most_points ==  stats[:points]
        high_scorer = name
      end
    end
  end  
end