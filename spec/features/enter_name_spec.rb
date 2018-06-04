feature 'Submit names', type: :feature do
  scenario 'user enters their name' do
    visit('/')
    fill_in :user, with: "Luke"
    click_button "Submit"
    expect(page).to have_content "Luke"
  end
end
