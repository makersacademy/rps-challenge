feature "Enter player names" do
  scenario "submitting names" do
    visit('/')
    fill_in :player_name, with: "Titus"
    click_button "Submit"
    expect(page).to have_content 'Titus vs Machine'
  end
end
