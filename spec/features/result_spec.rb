feature 'Result page' do
  scenario 'play again' do
    name_entry_and_play
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content 'choose:'
  end
  scenario 'home page' do
    name_entry_and_play
    click_button 'Rock'
    click_button 'Home Page'
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
