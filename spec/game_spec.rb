require 'game.rb'

describe Game do

  subject(:game) { described_class.new(human, cpu) }
  subject(:game2) { described_class.new(human, cpu2) }
  subject(:game3) { described_class.new(human, cpu3) }
  subject(:game4) { described_class.new(human2, cpu) }
  subject(:game5) { described_class.new(human2, cpu2) }
  subject(:game6) { described_class.new(human2, cpu3) }
  subject(:game7) { described_class.new(human3, cpu) }
  subject(:game8) { described_class.new(human3, cpu2) }
  subject(:game9) { described_class.new(human3, cpu3) }

  let(:human) { double(:Human, name: "John", choice: :rock) }
  let(:human2) { double(:Human, name: "John", choice: :paper) }
  let(:human3) { double(:Human, name: "John", choice: :scissors) }
  let(:cpu) { double(:Cpu, name: "CPU", choice: :rock) }
  let(:cpu2) { double(:Cpu, name: "CPU", choice: :paper) }
  let(:cpu3) { double(:Cpu, name: "CPU", choice: :scissors) }

  describe '#Result' do
    it 'returns wins with rock v scissors' do
      expect(game.result(human.choice, cpu3.choice)).to eq(:wins)
    end
    it 'returns wins with paper v rock' do
      expect(game.result(human2.choice, cpu.choice)).to eq(:wins)
    end
    it 'returns wins with scissors v paper' do
      expect(game.result(human3.choice, cpu2.choice)).to eq(:wins)
    end
    it 'returns draws with rock v rock' do
      expect(game.result(human.choice, cpu.choice)).to eq(:draws)
    end
    it 'returns draws with paper v paper' do
      expect(game.result(human2.choice, cpu2.choice)).to eq(:draws)
    end
    it 'returns draws with scissors v scissor' do
      expect(game.result(human3.choice, cpu3.choice)).to eq(:draws)
    end
    it 'returns loses with rock v paper' do
      expect(game.result(human.choice, cpu2.choice)).to eq(:loses)
    end
    it 'returns loses with paper v scissors' do
      expect(game.result(human2.choice, cpu3.choice)).to eq(:loses)
    end
    it 'returns loses with scissors v rock' do
      expect(game.result(human3.choice, cpu.choice)).to eq(:loses)
    end
  end
end
