require 'game'

describe Game do
  subject(:game1){ described_class.new(user_weapon, computer_weapon) }
  let(:user_weapon) { :paper }
  let(:computer_weapon) { :rock }

  subject(:game2){ described_class.new(user_weapon2, computer_weapon2) }
  let(:user_weapon2) { :scissors}
  let(:computer_weapon2) { :rock }

  subject(:game3){ described_class.new(user_weapon3, computer_weapon3) }
  let(:user_weapon3) { :scissors}
  let(:computer_weapon3) { :scissors }

  it 'expects to start the game' do
    expect(game1).to respond_to(:play_game)
  end

  it 'expects to print you win if user choose rock and compute scissors' do
    expect(game1.play_game).to eq 'You win'
  end

  it 'expects to print you lose if user choose rock and compute scissors' do
    expect(game2.play_game).to eq 'You lose'
  end

  it 'expects to print draw if user and compute choose the same value' do
    expect(game3.play_game).to eq 'Draw'
  end
end
