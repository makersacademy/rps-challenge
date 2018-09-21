feature 'choose weapon' do
  scenario 'user chooses rock as their weapon' do
    player_signin
    click_button('rock')
    expect(page).to have_content('you chose rock')
  end
end