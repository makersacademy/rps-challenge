feature "playing RPS game" do

  scenario "choosing to play rock" do
    enter_name_and_start_game
    click_button "ROCK"
    expect(page).to have_content "Charlotte chose rock!"
  end



end
