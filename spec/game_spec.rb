require 'game'

describe Game do
  let(:player) { double :player, name: 'Andy', rounds_won: 0, selection: :rock }
  let(:comp) { double :comp, name: 'Computer', rounds_won: 0, selection: :paper }
  let(:r2) { double :round, find_winner: 'Andy', winner: comp }
  let(:round) { double :round, find_winner: 'Computer', new: r2, winner: comp }
  subject(:m_game) { described_class.new(player, player, round) } #multi game
  subject(:s_game) { described_class.new(player, comp, round) } #single game

  context 'on initialize' do
    it 'should default to Singleplayer if only 1 person plays' do
      expect(s_game.singleplayer).to eq true
    end
    it 'should be a Multiplayer game if 2 people play' do
      expect(m_game.singleplayer).to eq false
    end
    it 'should have an empty round history' do

    end
  end

  describe '#p1_name' do
    it 'should return the player name' do
      expect(m_game.p1_name).to eq 'Andy'
    end
  end
  describe '#p2_name' do
    it 'should return the player name' do
      expect(m_game.p2_name).to eq 'Andy'
    end
    it 'should return Computer if Singleplayer' do
      expect(s_game.p2_name).to eq 'Computer'
    end
  end

  describe '#fight' do
    it 'calls a new round' do
      expect(round).to receive(:new).with(player, comp)
      s_game.fight
    end
  end

  describe '#select' do
    it 'makes a selection for p1' do
      expect(player).to receive(:round_select).with('Rock')
      s_game.select(player, 'Rock')
    end
  end

  describe '#round_num' do
    it 'initialize on round 0' do
      expect(s_game.round_num).to eq 0
    end
    it 'should update to round 1' do
      s_game.fight
      expect(s_game.round_num).to eq 1
    end
  end

  describe '#wins' do
    it 'should display the correct number of wins' do
      s_game.fight
      expect(s_game.wins(player)).to eq 0
      expect(s_game.wins(comp)).to eq 1
    end
    it 'should be zero when a game is started' do
      expect(s_game.wins(player)).to eq 0
    end
  end

  describe '#draw' do
    it 'should display the correct number of draws' do
      allow(round).to receive(:winner).and_return(nil)
      allow(r2).to receive(:winner).and_return(nil)
      s_game.fight
      expect(s_game.draw).to eq 1
    end
  end
end