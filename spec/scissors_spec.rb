require './lib/choice'

  describe 'scissors' do
it 'shows answer scissors' do
visit('/')
sign_in
click_button('Scissors')
expect(page).to have_content('scissors')
  end
end
