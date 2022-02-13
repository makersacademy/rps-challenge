feature "the homepage", type: :feature do
 scenario "expects a form for players to enter their name" do
   visit ('/')
   expect(page).to have_field "player_name"
   expect(page).to have_selector("input[type=submit][value='Enter Name']")
 end
end

feature "entering a name", type: :feature do
  scenario "display the player name" do
    sign_in_and_play
  end
 end

feature "play rock, paper, scissors" do
  scenario "display rock, paper and scissor options" do
    visit '/player'
    # sign_in_and_play
    expect(page).to have_selector(:link_or_button, "Rock")
    expect(page).to have_selector(:link_or_button, "Paper")
    expect(page).to have_selector(:link_or_button, "Scissors")
  end 
end