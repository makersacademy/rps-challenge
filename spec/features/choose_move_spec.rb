require 'spec_helper'

feature "Player can choose a move" do
  scenario "One of rock, paper, or scissors" do
    sign_in_and_begin
    expect(page).to have_content("Josh, please choose your move")
  end
end