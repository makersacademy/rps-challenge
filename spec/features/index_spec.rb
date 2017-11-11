feature 'Home Page' do
  scenario 'has the title of RPS Game' do
    go_to_homepage
    expect(page).to have_content('Rock, Paper, Scissors Game')
  end

  scenario 'asks for players name' do
    go_to_homepage
    expect(page).to have_content('Please enter your name:')
    expect(page).to have_field('name')
    expect(page).to have_selector("input", id: 'submit')
  end
end

feature 'Submit Button' do
  scenario 'takes player to Play screen' do
    enter_name_and_submit
    expect(page.current_url).to include('/play')
  end
end
