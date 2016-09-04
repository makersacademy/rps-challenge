require 'spec_helper'
require_relative '../../lib/game'


feature "winning or losing a game" do
before do
  allow_any_instance_of(Game).to receive(:comp_choice_value).and_return(1)
end
  scenario "player chooses rock" do
    sign_in_and_play
    choose("rps1")

    click_button("Submit")
    expect(page).to have_content "The computer chose Rock"
    expect(page).to have_content "You are tied!"
  end
end
