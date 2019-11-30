feature "getting player names" do
  scenario "filling in form" do
    visit '/'
    fill_in 'player', with: "Henlo"
    click_on 'Submit'
    expect(page).to have_content 'Welcome to the game Henlo'
  end
end
