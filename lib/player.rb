class Player

  attr_reader :name, :user_move

  def initialize(name)
    @name = name
  end

  def user_move(user_move)
    @user_move = user_move

  end

end
