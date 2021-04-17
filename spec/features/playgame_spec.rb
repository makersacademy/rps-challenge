require_relative '../../app.rb'

feature 'Name displayed on the play game page' do 
  scenario 'It shows previously loaded name on the play game page' do 
    sign_in_and_play
    expect(page).to have_text 'Mittens'
  end
end