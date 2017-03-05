require './lib/choice'
  describe 'paper' do
it 'shows answer paper' do
visit('/')
sign_in
click_button('Paper')
expect(page).to have_content('paper')
  end
end
