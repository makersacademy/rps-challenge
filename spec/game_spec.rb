require "game"

describe Game do
  let(:player_red) { double("Player 1", :name => "Red", :computer? => false, :receive_weapon => true, :weapon => nil) }
  let(:player_blue) { double("Player 2", :name => "Blue", :computer? => false) }
  let(:player_computer) { double("Computer", :name => "COMPUTER", :computer? => true) }

  let(:weap_rock) { double("Rock", :name => :rock, :targets => [:scissors]) }
  let(:weap_paper) { double("Paper", :name => :paper, :targets => [:rock]) }
  let(:weap_scissors) { double("Scissors", :name => :scissors, :targets => [:paper]) }
  let(:weapon_list) { [weap_rock, weap_paper, weap_scissors] }

  let(:solo_game) { Game.new(player_red, player_computer, weapon_list) }
  let(:multi_game) { Game.new(player_red, player_blue, weapon_list) }

  describe '#single_game?' do
    it 'returns true if Player 2 is the computer, false otherwise' do
      expect(solo_game.single_game?).to eq true
      expect(multi_game.single_game?).to eq false
    end
  end

  describe '#give_weapon' do
    it 'returns whichever weapon was chosen' do
      expect(solo_game.give_weapon(player_red, 1).name).to eq :paper
    end

    it 'calls receive_weapon on whichever player is chosen to receive' do
      expect(player_red).to receive(:receive_weapon).with(weap_paper)
      solo_game.give_weapon(player_red,1)
    end

    it 'gives a random weapon if no weapon is specified' do # [srand = rand]: [1,1], [2,0], [3,2]
      expect_weapon(weap_paper, 1)
      expect_weapon(weap_rock, 2)
      expect_weapon(weap_scissors, 3)
    end

    def expect_weapon(weapon, n)
      srand(n)
      expect(player_red).to receive(:receive_weapon).with(weapon)
      solo_game.give_weapon(player_red)
    end
  end

  let(:player_with_rock) { double("A player with a rock", :weapon => weap_rock) }
  let(:player_with_scissors) { double("A player with scissors", :weapon => weap_scissors) }
  let(:player_one_victory_game) { Game.new(player_with_rock, player_with_scissors, weapon_list) }
  let(:player_two_victory_game) { Game.new(player_with_scissors, player_with_rock, weapon_list) }
  let(:player_draw_game) { Game.new(player_with_rock, player_with_rock, weapon_list) }

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

  describe '#ready_to_declare?' do
    it 'returns false when one player has not yet chosen an weapon' do
      expect(solo_game.ready_to_declare?).to be false
    end

    it 'returns true when both players have an weapon' do
      expect(player_one_victory_game.ready_to_declare?).to be true
    end
  end

  describe '#switch_turn' do
    it 'switches turns when called' do
      expect(solo_game.turn).to eq 1
      3.times do
        switch_and_expect(2)
        switch_and_expect(1)
      end
    end

    def switch_and_expect(n)
      solo_game.switch_turn
      expect(solo_game.turn).to eq n
    end
  end

  describe '#make_choice' do
    it 'calls give_weapon on player 1 for turn 1, or player 2 for turn 2' do
      expect(player_red).to receive(:receive_weapon).with(weap_paper)
      multi_game.make_choice(1)
      expect(player_blue).to receive(:receive_weapon).with(weap_paper)
      multi_game.make_choice(1)
    end

    it 'gives a random weapon if called without a choice' do
      srand(1)
      expect(player_red).to receive(:receive_weapon).with(weap_paper)
      multi_game.make_choice
    end
  end

  describe '#draw?' do
    it 'returns true if there is a draw, false otherwise' do
      expect(player_one_victory_game.draw?).to eq false
      expect(multi_game.draw?).to eq true
    end
  end

  describe '#reset' do
    it 'calls remove_weapon on all players' do
      expect(player_red).to receive(:remove_weapon)
      expect(player_blue).to receive(:remove_weapon)
      multi_game.reset
    end
  end
end
