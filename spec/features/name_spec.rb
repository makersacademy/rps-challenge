feature 'name' do
  scenario "The player enters their name" do
    sign_in
    expect(page).to have_content('Chris')
  end
end
