feature "Enter name" do
  scenario "submit name" do
    visit('/')
    fill_in :name, with: 'Calum'
    click_button 'Submit'
    expect(page).to have_content 'Calum'
  end
end
