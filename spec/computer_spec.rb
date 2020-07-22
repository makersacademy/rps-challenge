require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  it 'selects randomly either rock, paper or scissors' do
    expect(computer.move).to eq(:rock).or eq(:paper).or eq(:scissors)
  end

end
