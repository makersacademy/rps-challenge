feature 'I want there to be a form I can fill in and see my name up in lights after' do
  scenario 'fill in form and submit' do
    enter_name
    expect(page).to have_content 'Tom'
  end
end

feature 'I want to be able to choose rock' do
  scenario 'select name and then rock' do
    enter_name
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
end

feature 'I want to be able to choose paper' do
  scenario 'select name and then paper' do
    enter_name
    expect(page).to have_selector(:link_or_button, 'Paper')
  end
end

feature 'I want to be able to choose scissors' do
  scenario 'select name and then scissors' do
    enter_name
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end

feature 'I choose scissors and next page returns my choice' do
  scenario 'select name and then scissors' do
    enter_name
    click_button 'Scissors'
    expect(page).to have_content 'You chose scissors'
  end
end
