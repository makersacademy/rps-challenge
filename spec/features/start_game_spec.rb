feature 'Testing start button' do
  scenario 'Game begins once start button is clicked' do
    sign_in_and_play
    click_button 'Start'
    expect(page).to have_content 'Choose wisely'
  end
end