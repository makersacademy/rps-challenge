require_relative '../../app'

feature "#enter name" do
  scenario "the player can enter their name and see it" do
    sign_in_and_play
    expect(page).to have_content "Hello Joe! Let's play rock paper scissors!"
  end
end
