feature 'User Choice' do
  scenario 'player makes a choice' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
end
