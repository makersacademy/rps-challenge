
feature "Enter name" do
  scenario "submitting name" do
    visit('/')
    fill_in :name, with: 'Eoin'
    click_button 'Submit'
    expect(page).to have_content "Eoin"
  end
end
