feature 'play page' do
  scenario 'player will see a welcome message with their name' do
    visit('/')
    fill_in 'pname', with: 'JAM' 
    click_button 'Submit'
    expect(page).to have_content 'Welcome JAM to the game of Rock, Paper and scissors !' 
  end
  scenario 'player will be able to select one of the three moves' do
    visit('/')
    fill_in 'pname', with: 'JAM' 
    click_button 'Submit'
    choose 'rock'
    expect(page).to have_button 'Submit'
  end

end  
