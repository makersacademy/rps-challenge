require 'cpu'

describe CPU do
  let(:cpu) { described_class.new }

  it 'can choose Rock, Paper or Scissors' do
    choice_array = []
    100.times { choice_array << cpu.choice }
    expect(choice_array.uniq).to contain_exactly('Rock', 'Paper', 'Scissors')
  end

  it 'can choose Rock, Paper, Scissors, Lizard or Spock' do
    choice_rpsls_array = []
    100.times { choice_rpsls_array << cpu.choice_rpsls }
    expect(choice_rpsls_array.uniq).to contain_exactly('Rock', 'Paper', 'Scissors', 'Lizard', 'Spock')
  end
end
