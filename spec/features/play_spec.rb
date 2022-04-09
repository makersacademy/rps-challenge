feature 'play page' do
  scenario 'player will see a welcome message with their name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome JAM to the game of Rock, Paper and scissors !' 
  end
  scenario 'player will be able to select one of the three moves' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end

end  
