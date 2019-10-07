# user can win
feature "Win game" do
  scenario "User can win game" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(0) 
    click_button "Paper"
    expect(page).to have_content("You win")
  end
end
