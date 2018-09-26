require_relative 'web_helpers'

feature 'Play' do
  scenario 'User chooses to play again' do
    submit_name_and_play
    click_button 'ROCK!'
    click_button 'Play Again'
    expect(page).to have_content "Choose rock, paper or scissors."
  end
end
