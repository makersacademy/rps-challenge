RSpec.feature 'rock, paper, scissors?' do
  scenario 'player can choose' do
    register
    expect(page).to have_text('Rock')
  end
end
