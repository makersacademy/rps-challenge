feature 'Show final result' do
  let(:player) { :player }
  let(:computer) { :computer }
  let(:game) { Game.new(player_1, computer) }

  # how can i get the test working with doubles??
  scenario 'Player Wins' do
    input_and_play
    click_button 'Rock'
    expect(page).to have_content 'Player 1 Wins!!!'
  end

  scenario 'Computer Wins' do
    input_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer Wins!!!'
  end

  scenario 'It is a Draw' do
    input_and_play
    click_button 'Rock'
    expect(page).to have_content 'It is a Draw'
  end
end
