# require 'capybara/rspec'
# require_relative '../../lib/app'
# require_relative 'spec_helper'
#
# feature 'Choice' do
#   before { sign_in_and_play }
#   context 'user makes a choice' do
#     scenario 'user makes a choice of rock' do
#       click_button 'Rock'
#       expect(Game.instance.choice).to eq 'Rock'
#     end
#
#     scenario 'user makes a choice of paper' do
#       click_button 'Paper'
#       expect(Game.instance.choice).to eq 'Paper'
#     end
#
#     scenario 'user makes a choice of scissors' do
#       click_button 'Scissors'
#       expect(Game.instance.choice).to eq 'Scissors'
#     end
#   end
#
#
# end
