require 'computer'

describe Computer do
  let (:computer) { Computer.create }

  it 'allow Computer to choose a weapon' do
    computer.choose_weapon
    expect(computer.weapon).to satisfy { |w| w == :scissors || w == :rock || w == :paper }
  end

end
