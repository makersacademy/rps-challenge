feature 'Multiplayer' do
  scenario 'Dave and Jim enter names, see Dave vs Jim' do
    multiplayer_sign_in
    expect(page).to have_content 'Dave vs Jim'
  end

  scenario 'Dave and Jim enter names, see Dave vs Jim' do
    multiplayer_sign_in
    expect(page).to have_content "Dave's choice. No peeking Jim!"
  end

  scenario 'Dave and Jim enter names, Dave picks rock, now Jims turn' do
    multiplayer_sign_in
    click_button('Rock')
    expect(page).to have_content "Jim's choice. No peeking Dave!"
  end
end
