
RSpec.feature 'Nav bar logo' do
  scenario 'user can see nav bar logo' do
    visit('/')
    expect(page).to have_content('Get Started')
  end
end

RSpec.feature 'Welcome message' do
  scenario 'user can see a welcome message' do
    visit('/')
    expect(page).to have_content('Welcome to the Treasure Land.')
  end
end

RSpec.feature 'Button' do
  scenario 'user must be able to click on button' do
    visit('/')
    click_link('getstarted')
    expect(page).to have_content('Enter Your Name')
  end
end

RSpec.feature 'Form' do
  scenario 'user should be able to fill in form' do
    filing_form
    expect(page).to have_content('Chris')
  end
end

RSpec.feature 'Form' do
  scenario 'user should be able to fill in form' do
    filing_form
    expect(page).to have_content('Score')
  end
end

RSpec.feature 'Form' do
  scenario 'user should be able to fill in form' do
    filing_form
    expect(page).to have_content('Bot')
  end
end

RSpec.feature 'Select' do
  scenario 'user should be able to select a choice' do
    filing_form
    page.select('Rock', :from => 'user_select')
    click_button('submit')
    expect(page).to have_content('Rock')
  end
end
