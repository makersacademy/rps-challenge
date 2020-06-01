feature 'start game' do
  
  scenario 'Player given three options to choose' do
    enter_name_start_game
    expect(page).to have_content "Choose your weapon!"
  end

end
