feature 'Starting a new game' do
  scenario 'Starting a new game after playing before' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'New Game?'
    expect(page).to have_content 'Please Register To Play'
  end
end

