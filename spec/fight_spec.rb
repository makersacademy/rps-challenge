require 'fight'

describe Fight do
  let(:player_rock) {double(:player, decision: "rock")}
  let(:player_scissors) {double(:player, decision: "scissors")}
  let(:player_paper) {double(:player, decision: "paper")}
  let(:ai_rock) {double(:ai, decision: "rock")}
  let(:ai_scissors) {double(:ai, decision: "scissors")}
  let(:ai_paper) {double(:ai, decision: "paper")}
  let(:fight) {described_class.new(player_rock, ai_rock)}
  it 'initiates with two players' do
    expect(fight.player1).to eq player_rock
    expect(fight.player2).to eq ai_rock
  end

  describe '#draw?' do
    it 'returns true if decision is the same' do
      expect(fight.draw?).to eq true
    end
  end

  describe '#battle' do
    it 'returns scores point for player' do
      expect(player_rock).to receive(:score_point)
      fight.battle(player_rock, ai_scissors)
    end

    it 'returns scores point for player' do
      expect(player_scissors).to receive(:score_point)
      fight.battle(player_scissors, ai_paper)
    end

    it 'returns scores point for player' do
      expect(player_paper).to receive(:score_point)
      fight.battle(player_paper, ai_rock)
    end

    it 'returns scores point for ai' do
      expect(ai_rock).to receive(:score_point)
      fight.battle(player_scissors, ai_rock)
    end

    it 'returns scores point for ai' do
      expect(ai_scissors).to receive(:score_point)
      fight.battle(player_paper, ai_scissors)
    end

    it 'returns scores point for ai' do
      expect(ai_paper).to receive(:score_point)
      fight.battle(player_rock, ai_paper)
    end
  end
end
