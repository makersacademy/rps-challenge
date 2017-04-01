feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock'
  end
end

feature 'Choose one-player mode' do
  scenario 'Choose one-player mode' do
    visit('/')
    click_button 'One Player'
    expect(page).to have_content 'Enter name'
  end
end

feature 'Enter name' do
  scenario 'Enter player name' do
    visit('/')
    click_button 'One Player'
    fill_in :player_name, with: 'Thor'
    click_button 'Submit'
    expect(page).to have_content 'Thor'
  end
end
