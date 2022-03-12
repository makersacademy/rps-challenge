require_relative 'web_helpers'

feature 'Enter names' do
  scenario 'Registering names' do
    register
    expect(page).to have_content 'It is Tinda vs. The Machine'
  end

end
