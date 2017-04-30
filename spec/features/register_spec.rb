

feature 'Can start new game by registering name' do 
	scenario 'Enter names and receive confirmation of registering' do
		register
		expect(page).to have_content "Sam vs Computer"
	end
end


