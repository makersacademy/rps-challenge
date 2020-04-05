feature 'Multiplayer' do
  scenario 'Dave and Jim enter names, see Dave vs Jim' do
    dave_jim_sign_in
    expect(page).to have_content 'Dave vs Jim'
  end

  scenario 'Dave and Jim enter names, see no peeking Jim' do
    dave_jim_sign_in
    expect(page).to have_content "Dave's choice. No peeking Jim!"
  end

  scenario 'Pete and Steve enter names, see no peeking Steve' do
    pete_steve_sign_in
    expect(page).to have_content "Pete's choice. No peeking Steve!"
  end

  scenario 'Dave and Jim enter names, Dave picks rock, now Jims turn' do
    dave_jim_sign_in
    click_button('Rock')
    expect(page).to have_content "Jim's choice. No peeking Dave!"
  end

  scenario 'Pete and Steve enter names, Pete picks rock, see no peeking Pete' do
    pete_steve_sign_in
    click_button('Rock')
    expect(page).to have_content "Steve's choice. No peeking Pete!"
  end

  scenario 'Dave and Jim enter names, Dave picks rock, Jim picks rock, draw' do
    dave_jim_sign_in
    click_button('Rock')
    click_button('Rock')
    expect(page).to have_content "Draw"
  end

  scenario 'Dave and Jim enter names, Dave picks rock, Jim picks paper, Jim wins' do
    dave_jim_sign_in
    click_button('Rock')
    click_button('Paper')
    expect(page).to have_content "Jim wins"
  end
end
