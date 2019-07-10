# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'View hit points' do
  scenario "can view player 2's hit points" do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_2_name, with: 'Leo'
    click_button 'Submit'
    expect(page).to have_content "Leo: 100 hp"
  end
end
