feature 'player makes a choice between RPS' do
  scenario 'picking rock confirms choice' do
    sign_in
    click_button('rock')
    expect(page).to have_content("You picked rock.")
  end

  scenario 'picking rock confirms choice' do
    sign_in
    click_button('paper')
    expect(page).to have_content("You picked paper.")
  end

  scenario 'picking rock confirms choice' do
    sign_in
    click_button('scissors')
    expect(page).to have_content("You picked scissors.")
  end
end
