require "capybara/rspec"

feature 'Adding Player Name' do
  scenario 'recieve input for name and displays' do
    visit('/')
    fill_in :player1 , with: "Alex"
    click_button "Submit"
    expect(page).to have_content("Prepare to fight Alex!")
  end
end
