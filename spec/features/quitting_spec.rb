feature 'quitting' do
  scenario 'player quits' do
    sign_in_and_play
    click_button 'Play'
    click_button 'Quit'
    expect(page).to have_content('Sad to see you go Alexis :(')
  end
end