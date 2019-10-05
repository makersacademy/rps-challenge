feature 'name registration' do
  context 'on the index page' do
    scenario 'User enters name' do
      name = "Kevin"
      sign_in
      expect(page).to have_content(name)
      expect(page).not_to have_content("Computer chose")
    end
  end
end