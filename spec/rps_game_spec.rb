require 'rps_game'

describe RpsGame do

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  it 'lets the user select a weapon' do
    expect(subject.choose_player_weapon('Paper')).to eq 'Paper'
  end

  it 'randomly chooses the computer weapon' do
    expect(WEAPONS).to include subject.choose_computer_weapon
  end

  context 'after playing a round' do

    before do
      srand(0) # seeds RNG to ensure computer chooses Rock
      subject.choose_computer_weapon
    end

    it 'reports if the game is tied' do
      subject.choose_player_weapon('Rock')
      subject.play
      expect(subject.results[:report]).to eq 'Rock meets Rock'
    end

    it 'reports if the game is won' do
      subject.choose_player_weapon('Paper')
      subject.play
      expect(subject.results[:report]).to eq 'Paper wraps Rock'
    end

    it 'reports if the game is lost' do
      subject.choose_player_weapon('Scissors')
      subject.play
      expect(subject.results[:report]).to eq 'Rock blunts Scissors'
    end

  end

end
