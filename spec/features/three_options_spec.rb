feature 'There are buttons for each of the three options' do

  scenario 'after logged in, is a rock button' do
    sign_in
    find_button("Rock").visible?
  end
  scenario 'after logged in, is a paper button' do
    sign_in
    find_button("Paper").visible?
  end

  scenario 'after logged in, is a scissors button' do
    sign_in
    find_button("Scissors").visible?
  end

  scenario 'after clicking rock button, the results page says so' do
    sign_in
    click_button("Rock")
    visit('/result')
    expect(page).to have_content('Alan selected Rock')
  end

  scenario 'after clicking paper button, the results page says so' do
    sign_in
    click_button("Paper")
    visit('/result')
    expect(page).to have_content('Alan selected Paper')
  end

  scenario 'after clicking scissors button, the results page says so' do
    sign_in
    click_button("Scissors")
    visit('/result')
    expect(page).to have_content('Alan selected Scissors')
  end

  scenario 'page should display the score' do
    sign_in
    expect(page).to have_content('Alan 0:0 Computuer')
  end
end
