feature 'User can enter their name' do 
  scenario 'User enters their name before the game begins' do 
    visit '/'
    fill_in 'player_name', with: 'Dwayne'
    click_button 'Submit'
    expect(page).to have_content "Hi Dwayne, let's play Rock, Paper, Scissors!"
  end
end