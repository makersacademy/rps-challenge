require 'computer.rb'

describe Computer do

  it 'chooses rock, paper, scissors, lizard or spock' do
    computer = Computer.new
    expect([:rock, :paper, :scissors, :lizard, :spock]).to include(computer.play)
  end



end
