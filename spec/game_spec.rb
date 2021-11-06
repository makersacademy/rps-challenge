require "game"

describe Game do
  let(:player_red) { double("Player 1", :name => "Red", :computer? => false, :receive_implement => true, :implement => nil) }
  let(:player_blue) { double("Player 2", :name => "Blue", :computer? => false) }
  let(:player_computer) { double("Computer", :name => "COMPUTER", :computer? => true) }
  let(:implement_list) { [
    { :imp => :rock, :winv => [:scissors] },
    { :imp => :paper, :winv => [:rock] },
    { :imp => :scissors, :winv => [:paper] }]
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
      expect(player_red).to receive(:receive_implement).with({ :imp => :paper, :winv => [:rock] })
      solo_game.give_implement(player_red,1)
    end

    it 'gives a random implement if no implement is specified' do # [srand = rand]: [1,1], [2,0], [3,2]
      expect_implement({ :imp => :paper, :winv => [:rock] }, 1)
      expect_implement({ :imp => :rock, :winv => [:scissors] }, 2)
      expect_implement({ :imp => :scissors, :winv => [:paper] }, 3)
    end

    def expect_implement(imp, n)
      srand(n)
      expect(player_red).to receive(:receive_implement).with(imp)
      solo_game.give_implement(player_red)
    end
  end

  let(:player_with_rock) { double("A player with a rock", :implement => { :imp => :rock, :winv => [:scissors] }) }
  let(:player_with_scissors) { double("A player with scissors", :implement => { :imp => :scissors, :winv => [:paper] }) }
  let(:player_one_victory_game) { Game.new(player_with_rock, player_with_scissors, implement_list) }
  let(:player_two_victory_game) { Game.new(player_with_scissors, player_with_rock, implement_list) }
  let(:player_draw_game) { Game.new(player_with_rock, player_with_rock, implement_list) }

  describe '#winner' do
    it 'returns @player_one if @player_one has :rock and @player_2 has :scissors' do
      expect(player_one_victory_game.winner).to eq player_with_rock
    end

    it 'returns @player_two if @player_one has :scissors and @player_2 has :rock' do
      expect(player_two_victory_game.winner).to eq player_with_rock
    end

    it 'returns nil if both players have :rock' do
      expect(player_draw_game.winner).to eq nil
    end
  end

  describe '#ready_to_declare' do
    it 'returns false when one player has not yet chosen an implement' do
      expect(solo_game.ready_to_declare).to be false
    end

    it 'returns true when both players have an implement' do
      expect(player_one_victory_game.ready_to_declare).to be true
    end
  end

end
