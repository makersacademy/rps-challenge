Capybara.app = Rps

feature 'At the start of the game' do

  scenario 'User can enter their name before playing' do
    enter_name_and_begin_game
    expect(page).to have_content("Hi Dave")
  end

end
