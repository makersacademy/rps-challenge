require './lib/computer'

describe Computer do
  
  it 'returns either Rock, Paper or Scissors' do
  srand(4)
  expect(subject.cpu_weapon).to eq :scissors
  end

end