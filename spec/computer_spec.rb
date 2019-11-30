require 'computer'

RSpec.describe Computer do
  it 'can play a hand in rock-paper-scissors' do
    expect(['Rock', 'Paper', 'Scissors']).to include subject.hand
  end
end
