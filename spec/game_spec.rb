require 'game'

describe Game do

  # Other mocks
  let(:some_player) { double(:an_instance_of_Player) }
  let(:some_computer) { double(:an_instance_of_Computer) }
  let(:some_judge) { double(:an_instance_of_Judge) }

  # Games
  let(:subject) {
    described_class.new(some_player, some_computer, some_judge)
  }

  describe '#initialize' do
    it 'has a player' do
      expect(subject.player).to eq some_player
    end

    it 'has a computer' do
      expect(subject.computer).to eq some_computer
    end

    it 'has a judge' do
      expect(subject.judge).to eq some_judge
    end
  end

  describe '#result' do
    it 'asks the result to the judge' do
      expect(subject.judge).to receive(:call)
      subject.result(:stone, :paper)
    end
  end
end
