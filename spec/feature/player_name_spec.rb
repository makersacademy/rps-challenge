require './app.rb'
require './spec/feature/web_helpers.rb'

RSpec.feature 'Test RPS' do
  scenario 'player enter name, name displayed' do
    insert_user_name

    expect(page).to have_text("Rock - Paper - Scissor\nPlayer1")
  end
end