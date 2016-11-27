require 'computer_opponent'

describe Opponent do

  let (:opponent) {described_class.new}
  let (:weapon) {double :weapon}
  let (:weapons) {[:rock,:paper,:scissors]}

  it "has weapons" do
    expect(opponent.weapons).not_to be nil
  end

  describe "adding weapons" do
    it "can increase the size of the weapons inventory" do
      expect{opponent.add_weapon(weapon)}.to change{opponent.weapons.count}.by 1
    end

  end
end
