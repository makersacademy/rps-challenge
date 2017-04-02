require 'player'

describe Player do
  subject(:player) {described_class.new("Magnus")}


  it 'player takes argument and sets equal to name' do
    expect(subject.name).to eq("Magnus")
  end 



end
