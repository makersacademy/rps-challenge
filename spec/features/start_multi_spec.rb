feature 'start page multiplayer' do

  scenario 'prompts players to enter their names' do
    visit '/'
    click_button 'Multiplayer'
    expect(page).to have_content "PLEASE ENTER YOUR NAMES\nPLAYER 1 PLAYER 2"
  end
end
