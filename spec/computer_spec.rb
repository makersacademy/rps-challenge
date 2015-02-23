require 'computer'

describe Computer do

  let(:computer){Computer.new}

  it 'can select a weapon randomly' do
    expect(computer.weapon).to eq ('Rock' || 'Paper' || 'Scissors')
  end

end
