require './lib/choice'
  describe 'rock' do
it 'shows answer rock' do
visit('/')
sign_in
click_button('Rock')
expect(page).to have_content('rock')
  end
end
