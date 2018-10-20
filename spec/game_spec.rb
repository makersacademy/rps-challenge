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
    it 'returns win with rock v scissors' do
      expect(game.result(human.choice, cpu3.choice)).to eq(:win)
    end
    it 'returns win with paper v rock' do
      expect(game.result(human2.choice, cpu.choice)).to eq(:win)
    end
    it 'returns win with scissors v paper' do
      expect(game.result(human3.choice, cpu2.choice)).to eq(:win)
    end
    it 'returns draw with rock v rock' do
      expect(game.result(human.choice, cpu.choice)).to eq(:draw)
    end
    it 'returns draw with paper v paper' do
      expect(game.result(human2.choice, cpu2.choice)).to eq(:draw)
    end
    it 'returns draw with scissors v scissor' do
      expect(game.result(human3.choice, cpu3.choice)).to eq(:draw)
    end
    it 'returns loss with rock v paper' do
      expect(game.result(human.choice, cpu2.choice)).to eq(:loss)
    end
    it 'returns loss with paper v scissors' do
      expect(game.result(human2.choice, cpu3.choice)).to eq(:loss)
    end
    it 'returns loss with scissors v rock' do
      expect(game.result(human3.choice, cpu.choice)).to eq(:loss)
    end
  end
end
