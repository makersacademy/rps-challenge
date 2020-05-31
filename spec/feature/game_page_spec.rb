require_relative 'sign_in_process'

feature 'testing game page' do
  scenario 'should ask for the player\'s move' do
    sign_in_process
    expect(page).to have_content('Hello Bene, what\'s your move?')
  end
  scenario 'should invite the player to enter either rock, paper or scissors' do
    sign_in_process
    expect(page).to have_content("please enter 'rock', 'paper' or 'scissors'")
  end
end
