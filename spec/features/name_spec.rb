feature 'Adding name' do
  scenario 'Type name' do
    visit('/')
    fill_in :name, with: "Charlotte"
    expect(page).to have_content "Welcome, Charlotte!"
  end
end
