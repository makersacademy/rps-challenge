feature 'have a login form' do
  scenario 'it has an area to enter names' do
    visit '/'
    expect(page).to have_content "Player 1 Player 2"
  end
end

feature 'store names' do
  scenario 'enter player names' do
    visit '/'
    fill_in 'p1', with: "Pinky"
    fill_in 'p2', with: "The Brain"
    click_button
    expect(page).to have_content "Pinky v The Brain"
  end
end
