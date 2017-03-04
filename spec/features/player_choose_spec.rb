RSpec.feature 'rock, paper, scissors?' do
  scenario 'player can choose' do
    register
    expect(page).to have_button('Rock')
  end
end
