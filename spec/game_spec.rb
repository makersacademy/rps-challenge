require 'game'

describe Game do
  before do
    $player_choice = "Rock"
  end
  it 'returns win message if player wins' do
    $comp_choice = :Scissors
    expect(subject.result).to eq "Rock destroys scissors. You won!"
  end

  it 'returns loss message if player loses' do
    $comp_choice = :Paper
    expect(subject.result).to eq "Paper wraps rock. You lost! :("
  end

  it 'returns draw message if player draws' do
    $comp_choice = :Rock
    expect(subject.result).to eq "You both drew the same hand!"
  end
end
