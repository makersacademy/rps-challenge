feature 'The game restarts after playing a round' do
  scenario 'The player sees the selection screen after the results screen' do
    sign_in_and_play
    choose('Rock')
    click_button('Go!')
    click_button('OK')
    expect(page).to have_content('Kye: choose your weapon!')
  end
end
