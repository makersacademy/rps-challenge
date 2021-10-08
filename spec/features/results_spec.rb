feature 'view results' do
  scenario 'see who won the game' do
    add_name_start
    click_button("ROCK")
    expect(page).to have_button 'Play again!'
  end
end