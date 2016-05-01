require './spec/features/web_helpers'

feature 'Name' do
  scenario 'Can set a name' do
    sign_in
    expect(page).to have_content "Alex's turn"
  end
end
