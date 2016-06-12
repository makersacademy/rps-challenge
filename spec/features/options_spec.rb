feature 'Enter names' do
  scenario 'submitting names' do
    sign_up
		expect(page).to have_content 'Rock'
		expect(page).to have_content 'Paper'
		expect(page).to have_content 'Scissors'
  end
end
