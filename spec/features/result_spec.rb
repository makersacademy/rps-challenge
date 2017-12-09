feature 'Result page' do
  scenario 'play again' do
    name_entry_and_play
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content 'choose:'
  end
end
