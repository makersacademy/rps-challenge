require 'game'

describe Game do

	subject(:game) { described_class.new(player1, player2)}
	let(:player1) { double(:player) }
  let(:player2) {double(:player)}
  
  def set_player1(argument)
    allow(player1).to receive(:choice) { argument }
  end

  def set_player2(argument)
    allow(player2).to receive(:choice) { argument}
  end

  it 'starts with a player1 and a computer' do
    expect(game.player1).to eq player1
  end

  it 'starts with a player1 and a computer' do
    expect(game.player2).to eq player2
  end

  context 'winning situations', focus: :true do
    it 'sets player1 as winner if player 1 chooses rock and player 2 chooses scissors' do
      set_player2(:scissors)
      set_player1(:rock)
      game.outcome
      expect(game.outcome).to eq :win
    end

    it 'sets player1 as winner if player1 chooses scissors and player 2 chooses paper' do
      set_player2(:paper)
      set_player1(:scissors)
      game.outcome
      expect(game.outcome).to eq :win
    end

    it 'sets player1 as winner if player1 chooses paper and player 2 chooses rock' do
      set_player2(:rock)      
      set_player1(:paper)
      game.outcome
      expect(game.outcome).to eq :win
    end
  end
  
  context 'losing situations' do
    it 'sets as loser if player1 chooses rock and player 2 chooses paper' do
      set_player2(:paper)
      set_player1(:rock)
      game.outcome
      expect(game.outcome).to eq :lose
    end

    it 'sets as loser if player 1 chooses scissors and player 2 chooses rock' do
      set_player2(:rock)     
      set_player1(:scissors)
      game.outcome
      expect(game.outcome).to eq :lose
    end

    it 'sets as loser if player 1 chooses paper and player 2 chooses scissors' do
      set_player2(:scissors)
      set_player1(:paper)
      game.outcome
      expect(game.outcome).to eq :lose
    end

  end

  context 'draw situations' do
    it 'sets the game to a draw if both choose rock' do
      set_player1(:rock)  
      set_player2(:rock)
      game.outcome
      expect(game.outcome).to eq :draw
    end

    it 'sets the game to a draw if both choose scissors' do
      set_player1(:scissors)
      set_player2(:scissors)
      game.outcome
      expect(game.outcome).to eq :draw
    end

    it 'sets the game to a draw if both choose paper' do
      set_player1(:paper)
      set_player2(:paper)
      game.outcome
      expect(game.outcome).to eq :draw
    end

    it 'does not set the game to a draw if player 1 beats player 2' do
      set_player1(:scissors)
      set_player2(:paper)
      game.outcome
      expect(game.outcome).to_not eq :draw
    end
  end

  context 'edge cases' do
    it 'moves twice, wins first time and then draws' do
      set_player1(:scissors)
      set_player2(:rock)  
      game.outcome
      set_player2(:scissors)
      game.outcome
      expect(game.outcome).to eq :draw
    end
  end
  
end