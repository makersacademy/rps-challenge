require 'app.rb'
require 'game'

# include Capybara::DSL
# Capybara.default_driver = :selenium

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Andrew'
  end
end

feature 'RPS Game' do
  scenario 'get confirmation of picking rock' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content 'You picked rock'
  end

  scenario 'get confirmation of picking paper' do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content 'You picked paper'
  end

  scenario 'get confirmation of picking scissors' do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content 'You picked scissors'
  end

  scenario 'it picks a winner' do
    sign_in_and_play
    shuffle == 'scissors'
    click_button("Rock")
    expect(page).to have_content 'YOU WIN'
  end

  scenario 'it shows a draw' do
    sign_in_and_play
    shuffle == 'paper'
    click_button("Paper")
    expect(page).to have_content 'IT\'S A DRAW'
  end
end
