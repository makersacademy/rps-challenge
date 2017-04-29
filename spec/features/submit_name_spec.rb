require_relative 'web_helpers'

feature 'User submits name' do
  scenario 'User enters name and is presented with game options' do
    sign_in
    expect(page).to have_content 'User is ready to Rock-Paper-Scissor!!'
  end
end
