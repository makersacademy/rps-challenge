require 'spec_helper'

describe RockPaperScissors do
	feature 'Register name' do
		scenario 'see registered name..' do
			register_and_play
			expect(page).to have_content 'Thank you for joining us'
		end
	end
end
