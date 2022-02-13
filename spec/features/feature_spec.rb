
feature "the homepage", type: :feature do
  scenario "display a form for a player to register their name" do
    visit '/'
    expect(page).to have_field("player_1")
    expect(page).to have_selector("input[type=submit][value='Register']")
  end
end

feature 'Enter Weapon' do
  scenario "display a form for a player to enter their weapon" do
    visit '/'
    fill_in :player_1, with: 'Shirley'
    click_button 'Register'
    expect(page).to have_content "Shirley Let's Play Rock, Paper Scissor"
    expect(page).to have_selector("input[type=submit][value='Play']")  
  end
end

feature 'Enter Play' do
  scenario "display a a page with the result of the game" do
    visit '/'
    fill_in :player_1, with: 'Shirley'
    click_button 'Register'
    click_button 'Play'
    expect(page).to have_content "Your weapon was"
    expect(page).to have_selector("input[type=submit][value='New Game']")  
  end
end
