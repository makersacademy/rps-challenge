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

  scenario 'page confirms the choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Batwoman chose Rock")
  end

  scenario 'page does not show choice before the move' do
    sign_in_and_play
    expect(page).not_to have_content("Batwoman chose")
  end
end
