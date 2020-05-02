feature 'player makes a choice between RPS' do
  scenario 'picking rock confirms choice' do
    sign_in
    click_button('rock')
    expect(page).to have_content("Dec picked rock.")
  end

  scenario 'picking rock confirms choice' do
    sign_in
    click_button('paper')
    expect(page).to have_content("Dec picked paper.")
  end

  scenario 'picking rock confirms choice' do
    sign_in
    click_button('scissors')
    expect(page).to have_content("Dec picked scissors.")
  end
end
