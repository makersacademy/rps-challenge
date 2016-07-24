feature "Play rock, paper, scissors" do
  scenario "user can pick one of three options" do
    sign_in_and_play
    expect(page).to have_content "Rock" && "Paper" && "Scissors"
  end
  scenario "user can view their option" do
    sign_in_and_play
    choose "Rock"
    click_button "Choose"
    expect(page).to have_content "Richard chooses Rock"
  end
  # scenario "computer shows its option" do
  #   sign_in_and_play
  #   choose "Rock"
  #   click_button "Choose"
  #   expect(page).to have_content "Computer chooses...."
  # end
end
