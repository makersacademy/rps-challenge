require 'game'

describe Game do
  let(:player1){ double :user, :name => "John" }
  let(:player2){ double :user, :name => "Frank" }
  let(:rounds){ double :rounds }
  subject(:players) { described_class.new(player1, player2, rounds) }

  describe "#init" do
    it 'retrieves player 1' do
      expect(subject.p1).to eq player1
    end

    it 'retrieves player 2' do
      expect(subject.p2).to eq player2
    end

    it 'retrieves the rounds' do
      expect(subject.rounds).to eq rounds
    end
  end

  describe "#current_turn" do
    it 'begins with player 1' do
      expect(subject.current_turn).to eq player1
    end

    it 'then switches to player 2' do
      subject.switch
      expect(subject.current_turn).to eq player2
    end
  end
end