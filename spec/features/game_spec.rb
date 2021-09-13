require game

feature 'Playing the game' do
  scenario "When I click Rock I am told if I have won" do
    click_button "rock"
    comp_move = "scissors"
    who_wins
    return winner_hash[@user_move.to_sym][@comp_move.to_sym]
    expect(page).to have_content "The result is .... You won"
  end
end