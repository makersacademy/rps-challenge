require 'player'

describe Player do
  subject(:yohann) { Player.new('Yohann') }
  let(:weapon) { double :weapon}

  context '#name' do
    it 'allows to return a name' do
      expect(yohann.name).to eq 'Yohann'
    end
  end
  it 'store a weapon' do
    expect(yohann.weapon).to eq nil
  end

  it 'allow to pick a weapon' do
    expect(yohann.pick(weapon)).to eq weapon
  end
end