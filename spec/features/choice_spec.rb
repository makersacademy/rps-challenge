feature 'Weapon Choice' do
  scenario "choose rock, paper, or scissors" do
    visit('/')
    fill_in :player, with: "Charly"
    click_button 'Submit'
    fill_in :choice, with: "Rock"
    click_button "Submit Choice"
    expect(page).to have_content "Rock"
  end
end
