feature 'Show if you won or lost' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "You are Victorious!" || "The Dark Web o.0 has defeated you!"
  end
end
