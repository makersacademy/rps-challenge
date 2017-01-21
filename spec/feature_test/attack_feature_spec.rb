require 'spec_helper'

feature "so I can choose my attack" do
  scenario "I can pick an option" do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end

feature "when I choose rock" do
  scenario "I can see that I've chosen rock" do
    choose_rock
    expect(page).to have_content("Mike chose rock!")
  end
  scenario 'I want to win if I the computer chose scissors' do
    choose_rock
    expect(page).to have_content("Computer chose scissors!")
    expect(page).to have_content("Mike wins!")
  end
  scenario 'I want to lose if the computer chooses paper' do
    choose_rock
    expect(page).to have_content("Computer chose paper!")
    expect(page).to have_content("Mike loses!")
  end
  scenario 'I want to draw if the computer chooses rock' do
    choose_rock
    expect(page).to have_content("Computer chose rock!")
    expect(page).to have_content("Mike and the Computer drew!")
  end
end
