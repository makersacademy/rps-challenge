feature 'testing the website' do
	scenario ' can run the websites content' do
		visit '/'
		expect(page).to have_content 'Testing is working'
	end 
end 