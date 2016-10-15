feature 'Start' do
  scenario 'Ask player to enter their name' do
    visit('/')
    fill_in :p1_name, with: 'Kath'
    click_button "Press on"
  end

  scenario "Display player's name" do
    visit('/name')
    expect(page).to have_content(:p1_name)
  end
end
