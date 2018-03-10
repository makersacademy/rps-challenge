feature 'Enter name' do
  scenario 'entering user name' do
    visit('/')
    fill_in :player_name, with: 'Cleopatra'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to RockPaperScissors, Cleopatra!'  
  end
end
