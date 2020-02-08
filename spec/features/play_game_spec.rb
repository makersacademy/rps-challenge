feature 'playing a game' do
  scenario 'player has options to choose from' do
    sign_in
    expect(page).to have_content("Pick an option:")
    expect(page).to have_button "Scissors"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Rock"
  end
end

    
