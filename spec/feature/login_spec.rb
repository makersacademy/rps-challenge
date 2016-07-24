require 'spec_helper'

feature 'Login' do
	scenario 'players can login' do
		sign_in_and_play
	end
end
