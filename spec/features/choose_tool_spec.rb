feature 'Choose item' do
    scenario 'The user can choose rock, paper or scissors' do
    visit('/choose_tool')
    page.choose('tool', option: 'rock')
    click_button 'Submit'
    expect(page).to have_content 'You chose:'
    end
end