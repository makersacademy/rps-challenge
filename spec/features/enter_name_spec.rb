feature 'Enter name' do 
  scenario 'user inputs name and the game starts' do 
    visit ('/')
    p 'we are in home page'
    fill_in :player_1_name, with: 'Rafa'
    click_button 'Start Game!'
    p 'we are in game page'
    expect(page).to have_content 'Rafa: Rock, Paper or Scissors'
  end
end