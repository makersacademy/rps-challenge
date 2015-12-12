

describe 'User Stories' do

feature 'enter name' do
	scenario 'submitting name' do 
		visit '/'
		fill_in :name, with: 'Dave'
		click_button 'submit'
		expect(page).to have_content 'Your name is Dave'
	end
end

# 	As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game



# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

end