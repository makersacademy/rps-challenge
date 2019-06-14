require './app.rb'
require './spec/feature/web_helpers.rb'

RSpec.feature 'RPS game' do

  scenario 'button rock returns Rock!' do
    insert_user_name
    click_button 'Rock!'
    expect(page).to have_text("Rock!")
  end

  scenario 'button paper returns Paper!' do
    insert_user_name
    click_button 'Paper!'
    expect(page).to have_text("Paper!")
  end

  scenario 'button scissors returns Scissor!' do
    insert_user_name
    click_button 'Scissor!'
    expect(page).to have_text("Scissor!")
  end

end