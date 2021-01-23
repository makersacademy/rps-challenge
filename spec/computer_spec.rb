require 'computer'

describe Computer do
  it 'chooses randomly from rock, paper and scissors' do
    expect(subject).to respond_to :weapon
  end
end
