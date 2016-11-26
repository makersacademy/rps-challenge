require 'spec_helper'
require_relative 'web_helper'

feature "start game" do
  scenario "the game will remind the player of the rules on the attack screen" do
    sign_in
    expect(page).to have_text("Rock crushes scissors, but gets smothered by paper")
  end
end

feature "selections" do
  scenario "player selects rock" do
    sign_in
    select('Rock', :from => 'take_your_pick')
    click_button("Submit")
    expect(page).to have_content("Dan chose Rock!")
  end

  scenario "player selects paper" do
    sign_in
    select('Paper', :from => 'take_your_pick')
    click_button("Submit")
    expect(page).to have_content("Dan chose Paper!")
  end

  scenario "player selects scissors" do
    sign_in
    select('Scissors', :from => 'take_your_pick')
    click_button("Submit")
    expect(page).to have_content("Dan chose Scissors!")
  end
end
