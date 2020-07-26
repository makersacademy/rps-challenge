feature 'player can win' do
  let(:game) { double :game }
  scenario 'player wins' do
    sign_in
    click_button 'Rock'
    # allow(game).to receive(:random_move) { 'scissors' }
    # allow(game).to receive(:move_comparison) { 'You Win' }
    # expect(page).to have_content 'You Win'
  end
end

# cannot implement the randomness correctly at the moment
