feature 'testing' do
	scenario "App running with content" do
		visit('/')
		expect(page).to have_content "Rock, paper, scissors"
	end	
end	