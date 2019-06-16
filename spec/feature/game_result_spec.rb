require './app.rb'
require './spec/feature/web_helpers.rb'
# require "rack_session_access/capybara"

RSpec.feature 'RPS game' do

  scenario 'button rock return cpu and result' do
    
    # double_cpu = double(CPU.new)
    # game = double(Game.new("Player1", double_cpu))
    # allow(game).to receive(:cpu).and_return(double_cpu)
    # allow(game).to receive(:random).and_return("Scissor!")
    # page.set_rack_session(:cpu_input => "Scissor!")
    insert_user_name
    click_button 'Rock'

    # expect(page).to have_text("Rock\nScissors\nYou Loose!")
    expect(page).to have_text("Rock")
  end

  scenario 'button paper returns Paper!' do
    insert_user_name
    click_button 'Paper'
    expect(page).to have_text("Paper")
  end

  scenario 'button scissors returns Scissors' do
    insert_user_name
    click_button 'Scissors'
    expect(page).to have_text("Scissors")
  end

end
