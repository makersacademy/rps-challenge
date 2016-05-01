require './spec/features/web_helpers'

feature 'Name_2' do
  scenario 'Can set a name' do
    sign_in_2
    expect(page).to have_content "Alex's turn"
  end
end
