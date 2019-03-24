require_relative '../../app.rb'

feature 'User can enter name and start game' do
  scenario 'Can enter name and see name on game page' do
    enter_name_and_play
    expect(page).to have_content "Arthur"
  end
end
