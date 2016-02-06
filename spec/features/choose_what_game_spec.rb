feature 'use can choose to play alone or with another person' do
  scenario 'play alone' do
    visit '/'
    click_link "Single Player"
    expect(page).to have_content "Enter your name:"
  end
  
  scenario 'multiplayer' do
    visit '/'
    click_link "Multiplayer"
    expect(page).to have_content "Player 1: "
  end
end