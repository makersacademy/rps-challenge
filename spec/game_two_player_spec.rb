require 'game_two_player'

describe GameTwoPlayer do

  let(:game)          { GameTwoPlayer.new('Kelvin', 'Tom', player_class) }
  let(:player_class)  { double(:player_class, new: player) }
  let(:player)        { double(:player, name: 'Kelvin') }

  it 'can store a player and return it' do
    expect(game.player2).to eq(player)
  end

  it 'can tell you if its a 1 player game or 2 player' do
    expect(game.players).to eq(2)
  end

  it 'can randomly pick a weapon' do
    expect([:rock, :paper, :scissors, :lizard, :spock]).to include(game.pick_weapon)
  end

  it 'can determine a draw' do
    expect(game.determine_result(['rock', 'rock'])).to eq('draw')
  end

  describe 'can see if you win or loose' do
    it 'paper beats rock' do
      expect(game.determine_result(['paper', 'rock'])).to eq(true)
    end

    it 'paper beats spock' do
      expect(game.determine_result(['paper', 'spock'])).to eq(true)
    end

    it 'rock beats scissors' do
      expect(game.determine_result(['rock', 'scissors'])).to eq(true)
    end

    it 'rock beats lizard' do
      expect(game.determine_result(['rock', 'lizard'])).to eq(true)
    end

    it 'scissors beats paper' do
      expect(game.determine_result(['scissors', 'paper'])).to eq(true)
    end

    it 'scissors beats lizard' do
      expect(game.determine_result(['scissors', 'lizard'])).to eq(true)
    end

    it 'lizard beats spock' do
      expect(game.determine_result(['lizard', 'spock'])).to eq(true)
    end

    it 'spock beats scissors' do
      expect(game.determine_result(['spock', 'scissors'])).to eq(true)
    end

    it 'spock beats rock' do
      expect(game.determine_result(['spock', 'rock'])).to eq(true)
    end

    it 'lizard beats paper' do
      expect(game.determine_result(['lizard', 'paper'])).to eq(true)
    end

    it 'rock looses to paper' do
      expect(game.determine_result(['rock', 'paper'])).to eq(false)
    end

    it 'paper looses to scissors' do
      expect(game.determine_result(['paper', 'scissors'])).to eq(false)
    end

    it 'scissors looses to rock' do
      expect(game.determine_result(['scissors', 'rock'])).to eq(false)
    end
  end

  it 'can re-set who won' do
    expect(player).to receive(:wipe_choice)
    expect(player).to receive(:wipe_choice)
    game.game_reset
  end

end
