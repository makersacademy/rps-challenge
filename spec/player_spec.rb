require 'player'

describe Player do

let (:subject) {Player.new}

  it 'should have a name variable set by initialization' do
    subject = Player.new('Guybrush')
    expect(subject.name).to eq('Guybrush')
  end

end
