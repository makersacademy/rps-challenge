require 'game'

describe Game do
  let(:player) { instance_double("Player", :name => "Luigi", :choice => "Scissors") }
  let(:ai) { instance_double("AI", :name => "Mario", :choice => "Scissors") }
  let(:ai_class) { class_double("AI", new: ai) }
  subject { described_class.new(player,ai) }
  context 'Creation: ' do
    it 'creates an instance of itself with a class method' do
      expect(Game.create(player).class).to eq Game
    end
    it 'accesses the instance of itself with a class method' do
      expect((Game.instance).class).to eq Game
    end
    it 'initializes with one arguments (player)' do
      expect(Game).to respond_to(:new).with(1).argument
    end
    it 'stores the first player' do
      expect(subject.player[:player]).to eq player
    end
  end
end
