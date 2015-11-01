feature 'score' do
  scenario 'the player chose rock' do
    sing_in
    click_button('let\'s play')
    click_button('rock')
    expect(page).to have_content('you chose rock')
  end
end
