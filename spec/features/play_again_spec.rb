feature 'playing again' do

  scenario 'user wants to play another game' do
    enter_name_and_play
    click_button 'Rock'
    click_button 'Dare to play again?'
    expect(page).to have_content("Welcome Bob!")
  end
end
