require 'spec_helper'

feature "Results of RPS battle shown" do
  scenario "Results of RPS" do
    sign_in
    select_choice
    expect(page).to have_content("You chose")
  end

  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Game).to receive(:get_computer_choice).and_return(:Scissors)
    sign_in
    select_choice
    expect(page).to have_content("Congratulations, you win!")
  end

  scenario "When I submit 'Rock' I am told if I have lost" do
    allow_any_instance_of(Game).to receive(:get_computer_choice).and_return(:Paper)
    sign_in
    select_choice
    expect(page).to have_content("Sorry, you have lost!")
  end

  scenario "When I submit 'Rock' I am told if I have tied" do
    allow_any_instance_of(Game).to receive(:get_computer_choice).and_return(:Rock)
    sign_in
    select_choice
    expect(page).to have_content("You have tied!")
  end
end
