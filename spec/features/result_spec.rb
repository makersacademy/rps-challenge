feature 'result' do
  scenario 'win' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Congradulations! You won!"
  end
  
  scenario 'lose' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "You lost! :("
  end
end