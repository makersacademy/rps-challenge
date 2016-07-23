describe 'Action page' do
  scenario "after selecting weapon we are taken to 'action' page" do
    visit '/home'
    fill_in "player_1_name", with: "Jonny"
    fill_in "player_2_name", with: "Santa Claus"
    click_button "Let's do this"
    click_button "I was born ready"
    click_button "Yes, I'm sure"
    expect(page).to have_content "Action!"
  end
end
