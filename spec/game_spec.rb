require "game"

describe Game do
  let(:player_red) { double("Player 1", :name => "Red", :computer? => false, :receive_implement => true) }
  let(:player_blue) { double("Player 2", :name => "Blue", :computer? => false) }
  let(:player_computer) { double("Computer", :name => "COMPUTER", :computer? => true) }
  let(:implement_list) { [:rock, :paper, :scissors] }
  let(:solo_game) { Game.new(player_red, player_computer, implement_list) }
  let(:multi_game) { Game.new(player_red, player_blue, implement_list) }

  describe '#single_game?' do
    it 'returns true if Player 2 is the computer, false otherwise' do
      expect(solo_game.single_game?).to eq true
      expect(multi_game.single_game?).to eq false
    end
  end

  describe '#give_implement' do
    it 'returns whichever implement was chosen' do
      expect(solo_game.give_implement(player_red, 1)).to eq :paper
    end

    it 'calls give_implement on whichever player is chosen to receive' do
      expect(player_red).to receive(:receive_implement).with(:paper)
      solo_game.give_implement(player_red,1)
    end

    it 'gives a random implement if no implement is specified' do # [srand = rand]: [1,1], [2,0], [3,2]
      expect_implement(:paper, 1)
      expect_implement(:rock, 2)
      expect_implement(:scissors, 3)
    end

    def expect_implement(imp, n)
      srand(n)
      expect(player_red).to receive(:receive_implement).with(imp)
      solo_game.give_implement(player_red)
    end
  end

end
