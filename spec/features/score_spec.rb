feature 'Score' do
  scenario 'starts at 0 - 0' do
    sign_up
		expect(page).to have_content "Hodor [0] - [0] - [0] Computer"
  end

   



end
