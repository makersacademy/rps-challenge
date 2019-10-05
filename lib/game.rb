class Game
  attr_reader :player, :player_choice

  def initialize(player)
    @player = Player.new(player)
    # @player_2 = Player.new(player_2_name)
    @win = [{ player: 'Rock', computer: 'Scissors' },
            { player: 'Scissors', computer: 'Paper' },
            { player: 'Paper', computer: 'Rock' }
           ]
  end

  def self.create(player)
    # player_2 = 'Opponent' if player_2.empty?
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def choice(player_choice)
    @player_choice = player_choice
  end

  def random_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def match(player_choice, computer_choice)
    return 'This is a tie!' if player_choice == computer_choice

    @win.each do |i|
      return 'You win!' if player_choice == i[:player] && computer_choice == i[:computer]
    end

    'You loose!'
  end

end
