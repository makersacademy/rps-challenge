require 'spec_helper.rb'

feature 'Adding a player' do

  scenario '#enter player name' do
    visit '/'
    enter_name_and_choice
    expect(page).to have_content('Welcome Lawrence')
  end
end
