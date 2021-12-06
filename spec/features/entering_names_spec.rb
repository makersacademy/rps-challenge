require_relative 'helpers'


feature 'enter names' do
  scenario 'go to rps website and enter player names' do
  add_name
  expect(page).to have_content'Danish vs Computer'
  end
end
  