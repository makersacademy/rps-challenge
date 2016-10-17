require_relative './weapon'
require_relative './user'
require_relative './rules'

class Game

  def self.create(user)
    @game = Game.new(user)
  end

  def self.instance
    @game
  end



  def initialize(user)
    @user_hash = {username: user.name,
      user_weapon: nil,
      user_score:  0
    }

    @ai_hash =  {ai_weapon: nil,
      ai_score: 0,
      draw_score: 0
    }
  end

  def get_user_name
    @user_hash[:username]
  end

  def get_user_weapon
    @user_hash[:user_weapon]
  end

  def set_user_weapon(weapon)
    @user_hash[:user_weapon] = weapon
  end

  def get_ai_weapon
    @ai_hash[:ai_weapon]
  end

  def set_ai_weapon
    @ai_hash[:ai_weapon] = Weapon.new.random_choice
  end

  def get_winner
    Rules.new.decide_winner(get_user_weapon, get_ai_weapon)
  end

  def score_incrementer
    if get_winner == get_user_weapon
      @user_hash[:user_score] += 1
    elsif get_winner == get_ai_weapon
      @ai_hash[:ai_score] += 1
    else
      @ai_hash[:draw_score] += 1
    end
  end

  def declair_winner
    if get_winner == get_user_weapon
      "Well done, #{@user_hash[:username]}, you won!"
    elsif get_winner == get_ai_weapon
      "Computer says 'Yay', you lost"
    else
      "No one was victorious, it's a Draw!"
    end
  end

end
