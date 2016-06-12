feature 'Score' do
  scenario 'starts at 0 - 0' do
    sign_up
		expect(page).to have_content "Hodor [0] - [0] - [0] Computer"
  end

  scenario 'player chooses rock' do
    sign_up
		expect(page).to have_content "Hodor [1] - [0] - [0] Computer"
  end



end
