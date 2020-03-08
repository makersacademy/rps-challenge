require 'capybara'

feature 'play' do
  scenario 'can choose some options' do
    click_button('Rock')
    expect(page).to have_content("Player 1 wins!")
    
  end
end