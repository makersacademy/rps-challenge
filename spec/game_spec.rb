require 'game'

describe Game do
  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player1, name: 'ruan' }
  let(:robot) { double :robot }

  describe '#initialization' do
    it 'initalizes a game with a human player' do
      expect(game.player).to eq player1
    end
  end

  describe '#player_choice' do
    it 'should return the button the player clicked' do
      game.player_choice('rock')
      expect(game.user_choice).to eq 'rock'
    end
  end

  describe '#update_round' do
    it 'updates round by one' do
      allow(game).to receive(:round_number) { 2 }
      expect(game.update_round).to eq 3
    end
  end

  describe '#draw?' do
    it "returns 'draw' if a draw" do
      allow(game).to receive(:game_choice) { :rock }
      game.player_choice(:rock)
      expect(game.draw?).to be_truthy
    end
  end

  describe '#win?' do
    it 'returns true if player wins (player choice = rock)' do
      allow(game).to receive(:game_choice) { :scissors }
      game.player_choice(:rock)
      expect(game.win?).to be_truthy
    end

    it 'returns true if player wins (player choice = scissors)' do
      allow(game).to receive(:game_choice) { :paper }
      game.player_choice(:scissors)
      expect(game.win?).to be_truthy
    end

    it 'returns true if player wins (player choice = paper)' do
      allow(game).to receive(:game_choice) { :rock }
      game.player_choice(:paper)
      expect(game.win?).to be_truthy
    end
  end

  describe '#lose' do
    it 'returns true if robot wins (robot choice = paper)' do
      allow(game).to receive(:game_choice) { :paper }
      game.player_choice(:rock)
      expect(game.lose?).to be_truthy
    end

    it 'returns true if robot wins (robot choice = scissors)' do
      allow(game).to receive(:game_choice) { :scissors }
      game.player_choice(:paper)
      expect(game.lose?).to be_truthy
    end

    it 'returns true if robot wins (robot choice = rock)' do
      allow(game).to receive(:game_choice) { :rock }
      game.player_choice(:scissors)
      expect(game.lose?).to be_truthy
    end
  end

  describe '#game_pick' do
    it 'should pick rock, paper or scissors' do
      game.player_choice(:rock)
      expect(game).to respond_to(:game_pick)
    end
  end



end
