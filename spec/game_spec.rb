require 'game'

describe Game do
  let(:subject) { described_class.new(player01) }
  let(:player01) { double(:player01) }

  describe '#player' do
    it 'stores the player' do
      expect(subject.player).to be(player01)
    end

    it "Tries to create new 'computer' player" do
      expect(Player).to receive(:new).with('Computer')
      subject
    end

    it 'stores the computer player' do
      expect(subject.computer).to be_instance_of(Player)
    end
  end

  describe '#make_random_choice' do
    it 'chooses randomly' do
      x = 0
      y = 0
      z = 0
      20.times do
        choice = subject.make_random_choice
        x += 1 if choice == ('rock')
        y += 1 if choice == ('paper')
        z += 1 if choice == ('scissors')
      end
      expect(x).to be > 0
      expect(y).to be > 0
      expect(z).to be > 0
    end
  end
end
