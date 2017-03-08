require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  it 'has a default score of 0' do
    expect(computer.score).to eq 0
  end

  it 'score increases after a win' do
    computer.adjust_score(5)
    expect(computer.score).to eq 5
  end

  it 'can select a weapon a random' do
    expect(computer.weapons).to include computer.select_random_weapon
  end

end
