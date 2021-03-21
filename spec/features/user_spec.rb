feature 'user' do
  scenario 'fills in their name, submit it, and see their names on screen' do
    visit '/'
    fill_in "user", :with => "Will"
    click_on "submit"
    expect(page).to have_text "Player: Will"
  end

  scenario 'has button for rock' do
    visit '/'
    fill_in "user", :with => "Will"
    click_on "submit"
    find_button('Rock').click
	expect(page).to have_content "Rock"
  end

   scenario 'has button for paper' do
    visit '/'
    fill_in "user", :with => "Will"
    click_on "submit"
    find_button('Paper').click
	expect(page).to have_content "Paper"
  end

   scenario 'has button for scissors' do
    visit '/'
    fill_in "user", :with => "Will"
    click_on "submit"
    find_button('Scissors').click
	expect(page).to have_content "Scissors"
  end
end