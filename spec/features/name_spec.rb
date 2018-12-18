feature 'Homepage' do
  scenario 'registers name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Socks!'
  end

  scenario 'selects attack' do
    sign_in_and_play
    expect(page).to have_content 'Choose your attack:'
    expect(page).to have_content 'Computer vs. Socks'
    select 'Rock', from: 'user_choice'
    click_button 'Go'
  end

end
