require 'computer'

RSpec.describe Computer do
  let(:test_computer) { Computer.new }

  it 'plays and keeps track of its last hand in a game of rock-paper-scissors' do
    test_computer.play_hand

    expect(['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']).to include test_computer.hand
  end
end
