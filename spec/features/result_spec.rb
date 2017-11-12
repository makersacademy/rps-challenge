require_relative '../../app.rb'

Capybara.app = RPSWeb

feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    visit('/')
    fill_in('name', with: 'Gabriela')
    visit '/play'
    srand(1)
    select 'rock', from: "choices", visible: false
    click_button('Play')
    expect(page).to have_content "Gabriela rock vs Computer paper You lose!"
  end
end
