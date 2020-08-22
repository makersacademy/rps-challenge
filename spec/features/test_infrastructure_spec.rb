feature 'Tests' do 

	scenario 'Test Infrastructure working' do
		visit('/test')
		expect(page).to have_content "Test infrastructure working!"
	end

end