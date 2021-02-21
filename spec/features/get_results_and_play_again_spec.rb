require './app.rb'

feature 'getting game results' do
  scenario 'it shows the resulting winner' do
    sign_in_and_play
    make_a_choice
    rps = double("rps", :player2_choice => "rock")
    expect(page).to have_content "You tied!"
  end
end
