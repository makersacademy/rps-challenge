feature 'RPS buttons' do
	scenario 'select Rock' do
		enter_name_play
		click_link "Rock"
		expect(page). to have_content "Vytis is showing Rock"
	end	

	scenario 'select Paper' do
		enter_name_play
		click_link "Paper"
		expect(page). to have_content "Vytis is showing Paper"
	end	

	scenario 'select Scissors' do
		enter_name_play
		click_link "Scissors"
		expect(page). to have_content "Vytis is showing Scissors"
	end	
end	