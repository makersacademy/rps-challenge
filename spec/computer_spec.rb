require 'computer'

describe Computer do

  subject { described_class.new }

  it 'returns rock, paper or scissors' do
    expect(subject.random_choice).to eq('Rock').or eq('Paper').or eq('Scissors')
  end

end
