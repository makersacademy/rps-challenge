RSpec.feature 'who wins?' do
  xscenario 'a winner is declared' do
    register
    click_button 'Rock'
    expect(page).to have_content(" wins!")
  end
end
