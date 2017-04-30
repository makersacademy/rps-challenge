require 'game'

describe Game do
  let(:human) { double :human }
  let(:ai) { double :ai }
  let(:ai_class) { class_double("AiPlayer", new: ai).
                          as_stubbed_const }
  subject(:game) { described_class.new({ player_1: human}) }

  describe '#initialize' do
    before(:example) { stub_const("AiPlayer", ai_class) }

    it 'saves a hash of players as attributes' do
      expect(game).to have_attributes(player_1: human)
    end

    it 'saves an AI player as player two' do
      expect(game).to have_attributes(player_2: ai)
    end

  end
end
