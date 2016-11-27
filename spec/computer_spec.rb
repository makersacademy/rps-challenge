require 'computer'

describe Computer do

  let(:computer) { described_class.new }

  it 'expects the computer to return rock' do
    expect([:rock, :paper, :scissors]).to include(computer.cpu_choice)
  end

end
