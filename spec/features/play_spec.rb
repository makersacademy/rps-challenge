feature "Game on" do

  scenario "tests for the existance of Player 1" do
    sign_in_and_play
    expect(page).to have_content "Player 1, choose your item:"
  end
  
end
