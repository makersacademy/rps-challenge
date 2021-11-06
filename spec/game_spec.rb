require 'game'

describe Game do
  subject(:game1) { Game.new(player1, computer_r) }
  subject(:game2) { Game.new(player1, computer_s) }
  subject(:game3) { Game.new(player1, computer_p) }
  let(:player1) { double :player, :player_choice => 'Rock', :choice => "Rock" }
  let(:computer_p) { double :computer_p, :random_choice =>'Paper', :choice => "Paper" }
  let(:computer_r) { double :computer_r, :random_choice =>'Rock', :choice => "Rock" }
  let(:computer_s) { double :computer_s, :random_choice =>'Scissors', :choice => 'Scissors' }

  describe '#player' do
    it 'should have player1' do
      expect(game1.player).to eq player1
    end
  end
  
  describe '#computer' do
    it 'should have computer' do
      expect(game1.computer).to eq computer_r
    end
  end

  describe '#play' do
    it 'should let player to choose option' do
      allow(game1).to receive(:play) 
      expect(player1.player_choice).to eq("Rock")
    end

    it 'should let computer to get random choice' do
      allow(game1).to receive(:play) 
      expect(computer_p.random_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end

  describe '#result' do
    it 'should return It is a draw' do
      allow(game1).to receive(:play) 
      game1
      game1.play('Rock')
      expect(game1.result).to eq("It is a draw!")
    end

    it 'should return "you won!"' do
      allow(game2).to receive(:play) 
      game2
      game2.play
      expect(game2.result).to eq("You WON!")
    end

    it 'should return "you lost!"' do
      allow(game3).to receive(:play) 
      game3
      game3.play
      expect(game3.result).to eq("You LOST!")
    end
  end
end