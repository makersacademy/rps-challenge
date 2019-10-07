require './rps'

RSpec.describe Rps do

  scenario 'confirms home page is working' do
    visit('/')
    expect(page).to have_content("Welcome to RPS")
  end

  scenario 'confirms we can enter name and be welcomed' do
    log_in_with_bob
    expect(page).to have_content("Bob, please choose your weapon")
  end

  scenario 'confirms we got to results after picking a weapon' do
    log_in_with_bob
    choose_rock
    expect(page).to have_content("Bob chose rock")
  end

  scenario 'confirms computer chooses scissors' do
    srand 123
    log_in_with_bob
    choose_rock
    expect(page).to have_content("Computer chose scissors")
  end

  scenario 'confirms computer wins when they should' do
    srand 125
    log_in_with_bob
    choose_rock
    expect(page).to have_content("Computer wins!")
  end

  scenario 'confirms player wins when they should' do
    srand 123
    log_in_with_bob
    choose_rock
    expect(page).to have_content("Player wins!")
  end

  scenario 'confirms a draw when it should be' do
    srand 129
    log_in_with_bob
    choose_rock
    expect(page).to have_content("Draw!")
  end

end
