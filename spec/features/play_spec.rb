feature '/play' do

  scenario 'shows player_1_name' do
	   sign_in_and_play
	   expect(page).to have_content TEST_PLAYER_1_NAME
  end

  scenario 'asks user for input' do
  	 sign_in_and_play
  	 expect(page).to have_content "Enter your move:"
  	 expect(page).to have_button("Submit")
  end

end
