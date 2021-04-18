require 'player'

describe Player do
  subject(:yohann) { Player.new('Yohann') }

  context '#name' do
    it 'allows to return a name' do
      expect(yohann.name).to eq 'Yohann'
    end
  end
end