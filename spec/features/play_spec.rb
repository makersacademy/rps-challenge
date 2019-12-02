require_relative 'sign_in_and_play_helper'

feature "play page" do

  before do
    sign_in_and_play
  end

  scenario "instruct user to select a move" do
    expect(page).to have_content "Please select a move"
  end
end
