feature 'starting with RPS' do
  scenario 'player enter the name' do
    visit('/')
    fill_in :player_name, with: "Jack"
    click_button "Submit"
    expect(page).to have_content("Jack welcome to RSP!!")
  end
end
