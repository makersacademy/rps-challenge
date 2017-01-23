require 'spec_helper'

feature "Tests outcomes" do
  scenario "Player wins" do
    allow_any_instance_of(Computer).to receive(:random_choice).and_return(:scissors)
    sign_in_and_play
    choose_weapon_and_fight
    expect(page).to have_content("Congratulations! You win!")
  end

  scenario "draw" do
    allow_any_instance_of(Computer).to receive(:random_choice).and_return(:rock)
    sign_in_and_play
    choose_weapon_and_fight
    expect(page).to have_content("You drew!")
  end

  scenario "Player loses" do
    allow_any_instance_of(Computer).to receive(:random_choice).and_return(:paper)
    sign_in_and_play
    choose_weapon_and_fight
    expect(page).to have_content("Sorry! You lose!")
  end
end
