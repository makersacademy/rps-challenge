require 'computer_player'

describe Computer_Player do

  it 'plays either rock, paper, or scissors' do
    srand(4)
    expect(subject.play).to eq('scissors')
  end

end
