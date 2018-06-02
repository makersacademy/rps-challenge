require 'player'

describe Player do
  #setup
  subject(:chris) { Player.new('Chris') }
  #exercise

  #verification
  describe '#name' do
    it 'returns the username' do
      expect(chris.name).to eq 'Chris'
    end
  end
end
