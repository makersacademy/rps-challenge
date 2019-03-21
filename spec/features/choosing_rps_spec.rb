feature 'player can choose rock paper scissors' do
  scenario 'page has a button for rock' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end

  scenario 'page has a button for paper' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Paper')
  end

  scenario 'page has a button for scissors' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end
