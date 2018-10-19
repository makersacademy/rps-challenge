class Game

  def initialize(user)
    @user = user
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def player_name
    @user.player_name
  end

  def user_chooses(choice)
    @user.make_a_choice(choice)
  end

  def user_choice
    @user.choice
  end

end
