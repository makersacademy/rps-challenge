feature 'Enter player name' do
  scenario "player can enter their name and see it" do
    enter_name_and_submit
    expect(page).to have_content("Welcome Rubber Duck!")
  end
end
