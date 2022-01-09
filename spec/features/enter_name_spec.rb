feature 'Enter name' do
  scenario 'player can have entered name displayed' do
    visit('/')
    fill_in :name, with: "Bob"
    click_button "Play!"
    expect(page).to have_content "Hello, Bob!"
  end
end