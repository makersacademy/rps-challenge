feature 'playing a game' do
  scenario 'player has options to choose from' do
    sign_in
    expect(page).to have_content "Pick an option:"
  end
end

    
