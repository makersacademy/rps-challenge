require_relative './web_helper.rb'
feature 'clicking rock paper...' do
  scenario 'click rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Farhaan Chose rock'
  end
end