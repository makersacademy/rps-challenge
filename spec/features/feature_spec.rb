require_relative 'web_helpers'

feature 'Basic page layout and functionality' do
  scenario 'can display page to make sure server is running' do
    visit('/')
    expect(page).to have_content 'Let\'s play Rock, Paper, Scissors!'
  end

    scenario 'You can input your name' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Choose your weapon, Tim'    
  end

  scent
end
