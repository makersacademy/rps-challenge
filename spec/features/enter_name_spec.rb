feature 'Enter name' do
  scenario "Dave and Mittens' names submitted on homepage" do
    sign_in
    expect(page).to have_content 'Dave'
  end
end
