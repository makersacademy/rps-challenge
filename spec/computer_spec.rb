require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it 'has a list of choices' do
    expect(computer.choices).not_to be_empty
  end
end
