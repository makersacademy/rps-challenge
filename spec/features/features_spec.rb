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
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content 'YOU WIN'
  end

  scenario 'it shows a draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content 'IT\'S A DRAW'
  end

  scenario 'it shows a loser' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content 'YOU LOSE'
  end
end
