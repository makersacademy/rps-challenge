require 'spec_helper'

feature 'Playing the Game' do 
	scenario 'player can choose option' do 
    visit '/'
    fill_in 'name',with: 'Christian'
    click_button('Submit')
    click_button('Rock')
		expect(page).to have_content 'Rock'
	end

end