feature 'playing a game' do
  scenario 'player has options to choose from' do
    sign_in
    expect(page).to have_content("Pick an option:")
    expect(page).to have_content("Scissors")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Rock")
  end
end

    
