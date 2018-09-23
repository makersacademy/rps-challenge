require_relative 'web_helpers'

feature "Play page" do
  scenario "displays entered name" do
    move_past_welcome
    expect(page).to have_content "Dave vs RPSbot"
  end

  scenario "displays variety of possible moves" do
    move_past_welcome
    expect(page).to have_select("player1_move", :with_options => ["Rock", "Paper", "Scissors"])
  end

  scenario "displays entered name" do
    move_past_welcome_multiplayer
    expect(page).to have_content "Dave vs Tim"
  end

  scenario "displays variety of possible moves" do
    move_past_welcome_multiplayer
    expect(page).to have_select("player2_move", :with_options => ["Rock", "Paper", "Scissors"])
  end



end
