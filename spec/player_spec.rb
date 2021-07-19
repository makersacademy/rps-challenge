require 'player'

describe Player do
  let(:test) { test = Player.new('Karim') }
  it 'name can be read' do
    expect(test.name).to eq('Karim')
  end

  it 'Move can be set externally' do
    test.move = 'Rock'
    expect(test.move).to eq('Rock')
  end 
end
