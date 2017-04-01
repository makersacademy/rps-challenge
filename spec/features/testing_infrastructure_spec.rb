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
    choose_two_man_and_enter_names
    expect(page).to have_content 'Welcome Thor'
  end
end

feature 'Player 1 has a turn, and then...' do
  scenario 'Second player gets a go' do
    choose_two_man_and_enter_names
    click_button 'Rock'
    expect(page).to have_content 'Welcome Loki'
  end
end

feature 'Victory message' do
  scenario 'A player wins' do
    choose_two_man_and_enter_names
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content 'Loki wins'
  end
end
