class Game
  attr_reader :score, :ai_choice, :user_choice, :name, :turn
  CHOICES = ['rock','paper','scissors']
  CHOICES2 = ['cat','goku','patrick']
  def initialize(name='')
    @score = [0,0]
    @beats = {cat: 'patrick', goku: 'cat', patrick: 'goku'}
    @name = name
    @user_choice = ''
    @turn = 1
  end

  def battle_check
    @ai_choice = picker
    @turn += 1
    battle
  end

  def choice(input)
    @user_choice = input
  end

  private

  def battle
    if draw?
      'DRAAAAW'
    elsif winner?
      @score[0] += 1
      "#{@user_choice.upcase} BEATS #{@ai_choice.upcase}"
    else
      @score[1] += 1
      "#{@ai_choice.upcase} BEATS #{@user_choice.upcase}"
    end
  end

  def picker
    CHOICES2.sample
  end

  def draw?
    @user_choice == @ai_choice
  end

  def winner?
    @beats[@user_choice.to_sym] == @ai_choice
  end

end
