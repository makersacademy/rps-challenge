require './app/rps_web.rb'
require_relative 'web_helpers'

feature 'enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Hi Zoe! Welcome to Rock, Paper, Scissors!"
  end
end
