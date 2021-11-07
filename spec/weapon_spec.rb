require "weapon"

describe Weapon do

  it 'initializes with expected default values if none are passed in' do
    expect(subject.name).to eq :missingno
    expect(subject.targets).to eq []
  end

end
