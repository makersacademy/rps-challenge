require 'player'

describe Player do
  subject(:moxie) { Player.new('Moxie') }
  subject(:hugo) { Player.new('Hugo') }

  describe '#name' do
    it 'returns the players name' do
      expect(moxie.name).to eq 'Moxie'
    end
  end

end