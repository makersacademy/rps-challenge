feature 'Testing infrastructure' do

  scenario 'Visits the route to make sure it exists' do
    visit('/')
    expect(page).to have_content 'Greetings, warrior. Register below:'
  end

  scenario "Adds Luke as player and click register" do
    visit('/')
    fill_in :name, with: "Luke"
    click_button "Click to register"
    expect(page).to have_content 'Luke vs. HAL'
  end

end
