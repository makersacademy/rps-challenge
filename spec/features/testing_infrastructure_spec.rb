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
    choose_solo_play_and_enter_name
    expect(page).to have_content 'Welcome Thor'
  end
end

feature 'Choose weapon' do
  scenario 'Pick rock, paper or scissors' do
    choose_solo_play_and_enter_name
    click_button 'Rock'
    expect(page).to have_content 'rock'
  end
end

feature 'Select two-player mode' do
  scenario 'Choose two-player mode' do
    visit('/')
    click_button 'Two Players'
    expect(page).to have_content 'Enter names'
  end
end

feature 'Enter two names' do
  scenario 'Enter two names' do
    visit('/')
    click_button 'Two Players'
    fill_in :player_1_name, with: 'Thor'
    fill_in :player_2_name, with: 'Loki'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Thor'
  end
end
