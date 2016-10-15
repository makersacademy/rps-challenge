feature 'Start' do
  scenario 'Ask player to enter their name' do
    visit('/')
    fill_in :name, with: 'Kath'
    click_button "Press on"
  end

  scenario "Display player's name" do
    visit('/name')
    expect(page).to have_content(:name)
  end
end
