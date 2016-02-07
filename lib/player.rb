class Player

attr_reader :name1, :user_choice

  def initialize(name1)
    @name1 = name1
  end

  def user_choice=(user_choice)
    @user_choice = user_choice
  end

end
