feature 'FEATURE: Making a choice' do
  scenario "a player can select rock, paper or scissors" do
    visit('/')
    fill_in :player_1_name, with: "Toby"
    click_button "submit"
    click_button "rock"
    expect(page).to have_text("Toby plays rock ✊!")
  end
end
