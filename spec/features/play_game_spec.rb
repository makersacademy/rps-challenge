require 'spec_helper'
require_relative 'web_helper'

feature "start game" do
  scenario "the game will remind the player of the rules on the attack screen" do
    sign_in
    expect(page).to have_text("Rock crushes scissors and lizard, but gets smothered by paper and vaporised by Spock")
  end
end

feature "selections" do
  scenario "player selects rock" do
    sign_in
    click_button("Rock")
    expect(page).to have_content("Dan chose Rock!")
  end

  scenario "player selects paper" do
    sign_in
    click_button("Paper")
    expect(page).to have_content("Dan chose Paper!")
  end

  scenario "player selects scissors" do
    sign_in
    click_button("Scissors")
    expect(page).to have_content("Dan chose Scissors!")
  end
end
