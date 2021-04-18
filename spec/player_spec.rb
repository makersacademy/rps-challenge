require 'player'

describe Player do
  subject(:dom) { Player.new('Dom') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(dom.name).to eq 'Dom'
    end 
  end

  describe '#selection' do
    it "records the player's move" do
      dom.make_move('Rock')
      expect(dom.move).to eq 'Rock'
    end
  end
end
