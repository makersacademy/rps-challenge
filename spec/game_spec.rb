require 'game'

describe Game do

  let(:game)          { Game.new('Kelvin', player_class) }
  let(:player_class)  { double(:player_class, new: player) }
  let(:player)        { double(:player, name: 'Kelvin') }

  it 'can store a player and return it' do
    expect(game.player).to eq(player)
  end

  it 'can randomly pick a weapon' do
    expect(['rock','paper','scissors','lizard','spock']).to include(game.pick_weapon)
  end

  it 'can determine a draw' do
    expect(game.determine_result('rock', 'rock')).to eq('draw')
  end

  describe 'can see if you win or loose' do
    it 'paper beats rock' do
      expect(game.determine_result('paper', 'rock')).to eq(true)
    end

    it 'paper beats spock' do
      expect(game.determine_result('paper', 'spock')).to eq(true)
    end

    it 'rock beats scissors' do
      expect(game.determine_result('rock', 'scissors')).to eq(true)
    end

    it 'rock beats lizard' do
      expect(game.determine_result('rock', 'lizard')).to eq(true)
    end

    it 'scissors beats paper' do
      expect(game.determine_result('scissors', 'paper')).to eq(true)
    end

    it 'scissors beats lizard' do
      expect(game.determine_result('scissors', 'lizard')).to eq(true)
    end

    it 'lizard beats spock' do
      expect(game.determine_result('lizard', 'spock')).to eq(true)
    end

    it 'spock beats scissors' do
      expect(game.determine_result('spock', 'scissors')).to eq(true)
    end

    it 'spock beats rock' do
      expect(game.determine_result('spock', 'rock')).to eq(true)
    end

    it 'lizard beats paper' do
      expect(game.determine_result('lizard', 'paper')).to eq(true)
    end

    it 'rock looses to paper' do
      expect(game.determine_result('rock', 'paper')).to eq(false)
    end

    it 'paper looses to scissors' do
      expect(game.determine_result('paper', 'scissors')).to eq(false)
    end

    it 'scissors looses to rock' do
      expect(game.determine_result('scissors', 'rock')).to eq(false)
    end
  end

  it 'can save the result in a variable' do
    game.determine_result('scissors', 'rock')
    expect(game.win).to eq(false)
  end

  it 'can re-set who won' do
    game.game_reset
    expect(game.win).to eq(nil)
  end

  it 'can store the players choice' do
    game.save_choices('rock', 'paper')
    expect(game.players_choice).to eq('rock')
  end

  it 'can store the computers choice' do
    game.save_choices('rock', 'paper')
    expect(game.computers_choice).to eq('paper')
  end

  it 'can reset the play and computers choice' do
    game.game_reset
    expect(game.computers_choice).to eq(nil)
  end

end