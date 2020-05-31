feature 'result page' do
  scenario 'displays players move' do
    sign_in_and_pick_rock
    expect(page).to have_content "Steve picked: Rock"
  end

  scenario 'displays computers move' do
    sign_in_and_pick_rock
    expect(page).to have_content "HAL picked:"
  end
end
