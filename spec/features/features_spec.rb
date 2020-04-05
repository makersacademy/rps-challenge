feature 'I want there to be a form I can fill in and see my name up in lights after' do
  scenario 'fill in form and submit' do
    enter_name
    expect(page).to have_content 'Tom'
  end
end

feature 'I want to be able to choose rock' do
  scenario 'select name and then rock' do
    enter_name
    expect(page).to have_selector(:link_or_button, 'rock')
  end
end

feature 'I want to be able to choose paper' do
  scenario 'select name and then paper' do
    enter_name
    expect(page).to have_selector(:link_or_button, 'paper')
  end
end

feature 'I want to be able to choose scissors' do
  scenario 'select name and then scissors' do
    enter_name
    expect(page).to have_selector(:link_or_button, 'scissors')
  end
end

feature 'I choose scissors and next page returns my choice' do
  scenario 'select name and then scissors' do
    choose_scissors
    expect(page).to have_content 'You chose scissors'
  end
end

feature 'Page allows me to ask for a result after my choice' do
  scenario 'select scissors and then result' do
    choose_scissors
    expect(page).to have_selector(:link_or_button, 'Result')
  end
end

feature 'page tells me what the computer chose' do
  scenario 'once i cliked result' do
    choose_scissors
    click_button 'Result'
    expect(page).to have_content 'The computer chose'
  end
end

feature 'page tells me whether I won' do
  scenario 'once i have clicked result' do
    choose_scissors
    click_button 'Result'
    expect(page).to have_content 'You'
  end
end
