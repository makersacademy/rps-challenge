require 'machine'

describe Machine do
  subject{described_class.new}

describe '#weapon' do
  it 'chooses a weapon at random' do
    subject.choose_weapon
    expect(subject.weapons).to include subject.weapon
  end
end
end
