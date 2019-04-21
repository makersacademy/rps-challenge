feature 'Replay Game' do
  scenario 'return to home page' do
    sign_in_and_click_play
    click_button ['ROCK', 'PAPER', 'SCISSORS',].sample
    click_button 'Replay'
    expect(page).to have_content 'Rock! Paper! Scissors!'
  end
end
