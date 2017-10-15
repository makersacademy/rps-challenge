feature 'starting a game' do
  scenario 'player can enter their name to start a game' do
    sign_in_and_play
    expect(page).to have_content "Hello Lucy! Let's play rock paper scissors!"
  end
  scenario 'there is a rock button' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end
  scenario 'there is a paper button' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
  end
  scenario 'there is a scissors button' do
    sign_in_and_play
    expect(page).to have_button 'Scissors'
  end
end
