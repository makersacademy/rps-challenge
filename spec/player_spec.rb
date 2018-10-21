require 'player'

describe Player do
  subject(:player) { described_class.new('Terry') }

  describe '#name' do
    it 'returns name' do
      expect(player.name).to eq('Terry')
    end
  end

  describe '#set_move' do
    it 'store move' do
      player.set_move('paper')
      expect(player.move).to eq('paper')
    end
  end

  describe '#image' do
    it 'returns corresponding image' do
      player.set_move('paper')
      expect(player.image).to eq("'/images/paper.png'")
    end

    it 'returns rock image at game start' do
      expect(player.image).to eq("'/images/rock.png'")
    end
  end

end
