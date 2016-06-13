feature 'Enter names' do
  scenario 'submitting names' do
    sign_up
		expect(page).to have_content "Hodor vs. Computer"
  end
end
