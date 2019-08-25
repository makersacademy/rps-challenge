require 'computer'

describe Computer do
  it 'can randomly choose a weapon from Rock, Paper or Scissors' do
    expect(Computer::WEAPONS).to include(subject.weapon)
  end
end
