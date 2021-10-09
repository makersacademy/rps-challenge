feature "Result of round of game" do
  scenario "shows who won the round" do
    allow_any_instance_of(Game).to receive(:computer_choice).and_return("Rock")
    enter_name_and_ok
    click_button "Rock"
    expect(page).to have_content "It's a draw!"
  end
end
