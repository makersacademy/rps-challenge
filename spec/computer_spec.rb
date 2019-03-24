require 'computer'

describe Computer do

  subject { described_class.new }

  it 'returns rock, paper or scissors' do
    expect(subject.random_choice).to eq('rock').or eq('paper').or eq('scissors')
  end
end
