# user can lose
feature "Lose game" do
  scenario "User can lose game" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(0) 
    click_button "Scissors"
    expect(page).to have_content("You lose")
  end
end
