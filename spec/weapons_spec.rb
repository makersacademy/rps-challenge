require 'weapons'

describe Weapons do

  let(:subject) { Weapons.new }
  subject(:rules) { Weapons.new({ rock: [:scissors, :lizard] }) }

  it "should allow weapons to have rules" do
    expect(subject.rules).to include(:rock)
  end
  
end
