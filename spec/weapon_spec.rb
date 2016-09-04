require 'weapon'

describe Weapon do

  subject (:weapon) {described_class.new(:rock)}

  it '#valid?' do
    expect(weapon.valid?).to eq true
  end

end
