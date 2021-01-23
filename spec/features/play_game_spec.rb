feature "playing RPS game" do

  scenario "choosing to play rock" do
    enter_name_and_start_game
    click_button "ROCK"
    expect(page).to have_content "Charlotte chose rock!"
  end

  scenario "choosing to play paper" do
    enter_name_and_start_game
    click_button "PAPER"
    expect(page).to have_content "Charlotte chose paper!"
  end


  # scenario "the opponent played the same type" do
  #   enter_name_and_start_game
  #   click_button "SCISSORS"
  #   expect(page).to have_content "opponentbot also chose scissors!"
  # end


end
