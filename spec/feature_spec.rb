feature 'testing setup and entry to game' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'ROCK PAPER SCISSORS'
  end

  scenario 'Runs app and completes form with name' do
    visit('/')
    fill_in 'playername', with: 'Lucky Punk'
    click_button 'Start'
    expect(page.text).to match(/Welcome to the Game, Lucky Punk/)
  end 
end
