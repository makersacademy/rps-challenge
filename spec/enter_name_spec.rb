feature 'Enter player name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: "Joe"
    click_button "Submit"

    save_and_open_page
    
    expect(page).to have_content "Let's play Joe"
  end
end

