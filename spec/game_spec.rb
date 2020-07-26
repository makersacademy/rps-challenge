require './lib/game'

RSpec::Mocks.configuration.allow_message_expectations_on_nil = true

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#initialize' do
    it 'with 2 players' do
      expect(subject.players.count).to eq 2
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(subject.player_1).to eq player_1 
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(subject.player_2).to eq player_2 
    end
  end

  describe '#winner_is' do
  # let(:player_1).receive(:throw)
  # let(:player_2).receive(:throw)
    it 'returns the winner given the players throws' do
      allow(player_1).to receive(:throw)
      allow(player_2).to receive(:throw)
      allow(player_1.throw).to receive(:choice).and_return("rock")
      allow(player_2.throw).to receive(:choice).and_return("scissors")
      expect(subject.winner_is).equal?(subject.player_1)
    end

    it 'returns the winner given the players throws' do
      allow(player_1).to receive(:throw)
      allow(player_2).to receive(:throw)
      allow(player_1.throw).to receive(:choice).and_return "paper"
      allow(player_2.throw).to receive(:choice).and_return "rock"
      expect(subject.winner_is).equal?(subject.player_2)
    end

    it 'returns nil when both throw choices match' do
      allow(player_1).to receive(:throw)
      allow(player_2).to receive(:throw)
      allow(player_1.throw).to receive(:choice).and_return "rock"
      allow(player_2.throw).to receive(:choice).and_return "rock"
      expect(subject.winner_is).to eq("TIE")
    end
  end
end
