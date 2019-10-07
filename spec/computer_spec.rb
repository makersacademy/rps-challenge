require 'computer'

describe Computer do
  let(:computer) { Computer.new('Jeff the computer') }

  it 'Should return computer name' do
    expect(computer.name).to eq 'Jeff the computer'
  end

  it 'returns the score' do
    expect(computer.score).to eq 0
  end
end
