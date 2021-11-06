feature 'User' do
  scenario 'can register in their name' do
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

feature 'Opponent' do
  scenario 'exists' do
    visit '/'
    fill_in "user", :with => "Will"
    click_on "submit"
    find_button('Rock').click
    expect(page).to have_content "Opponent:"
  end

  scenario 'chooses rock, paper or scissors' do
    visit '/'
    fill_in "user", :with => "Will"
    click_on "submit"
    find_button('Rock').click
    expect(page).to satisfy {|page| page.has_content?("Rock") or page.has_content?("Paper") or page.has_content?("Scissors")}
  end
end

feature 'Winner' do
  scenario 'is determined correctly' do
    visit '/'
    fill_in "user", :with => "Will"
    click_on "submit"
    find_button('Rock').click
    expect(page).to satisfy {|page| page.has_content?("Will wins!") or page.has_content?("Edward Scissor Hands wins!") or page.has_content?("It's a draw!")}
  end
end
