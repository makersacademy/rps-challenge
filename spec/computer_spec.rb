require 'computer'

describe Computer do

  it "chooses a random weapon" do
    computer = Computer.new
    computer.choose_weapon
    expect(computer.weapon).not_to eq nil
  end

end