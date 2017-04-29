require_relative '../../app.rb'

feature 'displaying user\'s name' do
  scenario 'user enters name' do
    sign_in
    find_link('Rock')
    find_link('Paper')
    find_link('Scissors')
  end
end
