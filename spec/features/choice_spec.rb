require_relative './webhelper.rb'

feature 'choice page' do

  scenario 'you can select the attack button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Attack!!!')
  end
end
