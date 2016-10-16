require "./app"

feature "Enter name" do
  scenario "submitting a name" do
    visit('/')
    fill_in :name, with: 'John Doe'
    click_button 'Play'
    expect(page).to have_content 'John Doe'
  end
end
