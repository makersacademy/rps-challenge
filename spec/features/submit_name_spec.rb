require_relative 'web_helpers'

feature 'User submits name' do
  scenario 'Enters name and is presented with game options' do
    sign_in
    expect(page).to have_content 'User is ready to Rock!!'
  end
end
