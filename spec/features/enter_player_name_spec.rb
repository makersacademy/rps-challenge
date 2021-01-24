feature 'enter names' do
  scenario 'the user enters their name' do
    visit('/')
    fill_in :player_name, with: "Richard"
    click_button "Submit"
    expect(page).to have_content("Welcome Richard")
  end
end
