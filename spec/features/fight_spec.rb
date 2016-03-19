feature 'Fight' do
	
	scenario 'shows what attack you picked' do
		allow(Kernel).to receive(:rand).and_return(2)
		sign_in_and_play
		click_button 'Rock'
		expect(page).to have_text('Rock vs Paper')
	end

	scenario 'Shows that the computer has won' do
		allow(Kernel).to receive(:rand).and_return(2)
		sign_in_and_play
		click_button 'Rock'
		expect(page).to have_text('The Computer is the winner!')
	end
end