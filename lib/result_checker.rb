class ResultChecker
  def self.check(player_1, player_2)
    to_obj(player_1).vs(player_2)
  end

  def self.to_obj(player_1)
    case player_1
    when "rock"
      return Rock
    when "paper"
      return Paper
    when "scissors"
      return Scissors
    when "spock"
      return Spock
    when "lizzard"
      return Lizzard
    else
      return nil
    end
  end
end

class Rock
  def self.vs(versus)
    result = {
      "paper" => 2, "spock" => 2, "scissors" => 1, "lizzard" => 1, "rock" => 0
    }
    result[versus]
  end
end

class Paper
  def self.vs(versus)
    result = {
      "paper" => 0, "spock" => 1, "scissors" => 2, "lizzard" => 2, "rock" => 1
    }
    result[versus]
  end
end

class Scissors
  def self.vs(versus)
    result = {
      "paper" => 1, "spock" => 2, "scissors" => 0, "lizzard" => 1, "rock" => 2
    }
    result[versus]
  end
end

class Spock
  def self.vs(versus)
    result = {
      "paper" => 2, "spock" => 0, "scissors" => 1, "lizzard" => 2, "rock" => 1
    }
    result[versus]
  end
end

class Lizzard
  def self.vs(versus)
    result = {
      "paper" => 1, "spock" => 1, "scissors" => 2, "lizzard" => 0, "rock" => 2
    }
    result[versus]
  end
end
