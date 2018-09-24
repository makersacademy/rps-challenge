
feature 'Index page' do
  scenario 'welcomes me on the page' do
    visit '/'
    expect(page).to have_content("Hello there!")
  end

  scenario 'ask for my name' do
    visit '/'
    expect(page).to have_content("What's your name?")
  end

  scenario 'asks me for my name and shows it' do
    visit '/'
    fill_in 'name', with: 'Alex'
    click_button 'Go!'
    expect(page).to have_content "Let's play Alex"
  end
end
