require_relative 'web_helpers'

feature 'Basic page layout and functionality' do
  scenario 'can display page to make sure server is running' do
    visit('/')
    expect(page).to have_content 'Let\'s play Rock, Paper, Scissors!'
  end

  scenario 'You can input your name' do
    sign_in_and_play
    expect(page).to have_content 'Choose your weapon, Tim'    
  end

  scenario 'you can choose your weapon from 3 options' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('You have chosen Rock!')
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('You have chosen Paper!')    
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content('You have chosen Scissors!')
  end

  scenario 'game will select a random option' do
    sign_in_and_play
    allow(Game).to receive(:choose_weapon).and_return(:Scissors)
    click_button 'Rock'
    expect(page).to have_content('The computer has chosen Scissors!')
  end

  # scenario 'the game will declare a winner' do
  #   sign_in_and_play
  #   click_button 'Rock'
  #   allow(Game).to receive(:choose_weapon).and_return(:Scissors)
  #   expect(page).to have_content('Tim wins!')
  # end

end
