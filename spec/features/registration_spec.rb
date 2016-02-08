require './spec/web_helpers'
feature 'player can sign in with his name' do
  scenario 'display player\'s name' do
    register_and_play
    expect(page).to have_content('player1')
  end
end
