require 'game'

describe Game do

  let(:jamie) { Player.new "Jamie" }
  let(:computer) { Computer.new }
  subject(:game) { Game.new(jamie, computer) }

  describe '#initialize' do
    it 'is initialized with a player and computer' do
      game = Game.new(jamie, computer)
      expect(game.player).to eq jamie
    end
  end

   describe '#play' do
     it 'asks player to check if their weapon of choice exists' do
       allow(jamie).to receive(:check_weapon).with(:rock).and_return(true)
       game.play(:rock)
     end

     it 'asks computer to pick a weapon' do
       allow(computer).to receive(:select_weapon).and_return(:rock)
       game.play(:rock)
     end
    end

  describe '#result' do
    before :each do
      allow(computer).to receive(:select_weapon).and_return(:rock)
    end

    it 'tells the player when they have won' do
      game.play(:paper)
      expect(game.result).to eq :win
    end

    it 'tells the player when they have lost' do
      game.play(:scissors)
      expect(game.result).to eq :lose
    end

    it 'returns a draw when player and computer have same weapon' do
      game.play(:rock)
      expect(game.result).to eq :draw
    end
  end

end
