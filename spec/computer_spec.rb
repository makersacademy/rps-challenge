require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it "has 0 score by default" do
    expect(computer.score).to eq 0
  end
  # 
  # xit "allows the computer to select weapon randomly", :focus do
  #   allow(computer).to receive(:random_weapon_selection).and_return "Rock"
  #   p computer.random_weapon_selection
  #   p computer.weapon
  #   expect(computer.weapon).to eq "Rock"
  # end

end
