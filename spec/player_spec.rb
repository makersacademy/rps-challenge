require 'player'

describe Player do
  subject(:ed) {described_class.new('Ed')}

  it 'returns players name' do
    expect(ed.name).to eq "Ed"
  end


  
end
