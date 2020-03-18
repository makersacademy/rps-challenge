feature 'Enter player name' do
  scenario 'can enter name in form' do
    visit '/'
    fill_in 'player_name', with: 'Josie'
    expect(page).to have_selector("input[value='Josie']")
  end
end

feature 'Press Play' do
  scenario 'can press play' do
    visit '/'
    expect(page).to have_content "Play!"
  end
end
