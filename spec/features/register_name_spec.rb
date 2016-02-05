feature 'user can register' do
  scenario 'displays users name' do
    visit('/')
    fill_in :name, with: "Dave"
    click_button "Submit"
    expect(page).to have_content "Dave vs Computer"
  end
end