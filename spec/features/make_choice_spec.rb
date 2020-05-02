feature 'player makes a choice between RPS' do
  scenario 'picking rock confirms choice' do
    sign_in
    choose('player_1_rock')
    click_button('play')
    expect(page).to have_content("Dec picked rock.")
  end

  scenario 'picking rock confirms choice' do
    sign_in
    choose('player_1_paper')
    click_button('play')
    expect(page).to have_content("Dec picked paper.")
  end

  scenario 'picking rock confirms choice' do
    sign_in
    choose('player_1_scissors')
    click_button('play')
    expect(page).to have_content("Dec picked scissors.")
  end
end
