feature 'Player can choose to quit or re-match' do
  scenario 'selects replay' do
    visit('/')
    sign_in_and_play
    choose_rock
    click_button 'OK'
    click_button 'Replay'
    expect(page).to have_content("Hello Moxie! Let's play Rock, Paper, Scissors!")
  end
  scenario 'selects quit' do
    visit('/')
    sign_in_and_play
    choose_rock
    click_button 'OK'
    click_button 'Quit'
    expect(page).to have_content('Enter your name to start')
  end
end
