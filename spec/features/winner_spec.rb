feature "winner" do
  
  scenario "is player 1" do
    sign_in_and_play
    select("Rock", from: "choice")
    click_button "Submit"
    expect(page).to have_content("Harrison wins")
  end

end
