feature 'welcome page' do
  scenario 'welcomes player' do
    visit '/'
    expect(page).to have_content 'WELCOME'
  end

  scenario 'prompts player to enter their name' do
    visit '/'
    expect(page).to have_content 'Please enter your name:'
  end
end
