require 'rps'

describe RPS do

  let(:subject) { described_class.new("Tom", "R") }

  describe "#initilization" do
    it 'returns a rivals move' do
      expect(subject.rival).to eq("R").or eq("P").or eq("S").or eq("K").or eq("L")
    end

    it 'returns Tom as a name' do
      expect(subject.name).to eq("Tom")
    end
  end

  describe '#logic' do
    it 'will give a draw if players have the same move' do
      expect(RPS.new("Tom", "R", "R").logic).to eq("YOU DRAW PLAY AGAIN?")
    end

    it 'will return a loss if the rival has a better move' do
      expect(RPS.new("Tom", "K", "P").logic).to eq("YOU LOSE")
    end
  end

end
