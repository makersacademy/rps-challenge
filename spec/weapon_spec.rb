require 'weapon'

describe Weapon do
  subject(:weapon){described_class.new('Rock')}

  it 'knows its name' do
    expect(weapon.name).to eq 'Rock'
  end

end
