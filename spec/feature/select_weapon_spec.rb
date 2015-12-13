feature 'weapon selection' do
  scenario 'weapon selection confirmation' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'You have chosen Rock'
  end
end
