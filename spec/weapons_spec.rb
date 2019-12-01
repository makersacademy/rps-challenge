require 'weapons'

describe Weapons do

    subject(:weapons) { Weapons.new }
    subject(:rules) { Weapons.new({rock: [:scissors, :lizard]})}

    it "should have weapons" do
        expect(subject.rules).to include(:rock)
    end
end

