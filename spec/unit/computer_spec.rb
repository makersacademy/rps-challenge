require 'computer'

describe Computer do

  it 'generates a random weapon' do
    expect(subject).to respond_to :random_weapon
  end

end
