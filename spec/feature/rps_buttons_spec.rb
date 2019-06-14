require './app.rb'
require './spec/feature/web_helpers.rb'

RSpec.feature 'RPS buttons' do

  scenario 'display rock button' do
    insert_user_name
    expect(page).to have_button('Rock')
  end

  scenario 'display paper button' do
    insert_user_name
    expect(page).to have_button('Paper')
  end

  scenario 'display scissor' do
    insert_user_name
    expect(page).to have_button('Scissor')
  end

end