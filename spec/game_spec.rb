require "game"

describe Game do
  let(:player_red) { double("Player 1", :name => "Red", :computer? => false, :receive_implement => true) }
  let(:player_blue) { double("Player 2", :name => "Blue", :computer? => false) }
  let(:player_computer) { double("Computer", :name => "COMPUTER", :computer? => true) }
  let(:implement_list) { [
    { :imp => :rock, :winv => [:scissors], :losev => [:paper] },
    { :imp => :paper, :winv => [:rock], :losev => [:scissors] },
    { :imp => :scissors, :winv => [:paper], :losev => [:rock] }]
  }
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
      expect(solo_game.give_implement(player_red, 1)[:imp]).to eq :paper
    end

    it 'calls receive_implement on whichever player is chosen to receive' do
      expect(player_red).to receive(:receive_implement).with({ :imp => :paper, :winv => [:rock], :losev => [:scissors] })
      solo_game.give_implement(player_red,1)
    end

    it 'gives a random implement if no implement is specified' do # [srand = rand]: [1,1], [2,0], [3,2]
      expect_implement({ :imp => :paper, :winv => [:rock], :losev => [:scissors] }, 1)
      expect_implement({ :imp => :rock, :winv => [:scissors], :losev => [:paper] }, 2)
      expect_implement({ :imp => :scissors, :winv => [:paper], :losev => [:rock] }, 3)
    end

    def expect_implement(imp, n)
      srand(n)
      expect(player_red).to receive(:receive_implement).with(imp)
      solo_game.give_implement(player_red)
    end
  end

  # describe '#winner' do
  #   it 'returns @player_one if @player_one has :rock and @player_2 has :scissors' do
  #     multi_game.give_implement(player_red, 0)
  #     multi_game.give_implement(player_blue, 2)
  #     expect(multi_game.winner).to eq player_red
  #   end
  # end

end
