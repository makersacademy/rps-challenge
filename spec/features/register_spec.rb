

feature 'Can start new game by registering name' do 
	scenario 'Enter names and receive confirmation of registering' do
		visit '/'
		fill_in :player_1_name, with: "Sam"
		fill_in :player_2_name, with: "Dan"
		click_button('Submit')
		expect(page).to have_content "Sam vs Dan"
	end
end


