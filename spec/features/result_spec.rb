feature 'User can see the final results ' do
  scenario 'can see his choice' do
    visit '/'
    fill_in 'name', with: 'Samuel'
    click_button 'Register'
    click_on 'Rock'
    expect(page).to have_content 'You chose: Rock'
  end

  scenario "can see computer's choice" do
    visit '/'
    fill_in 'name', with: 'Samuel'
    click_button 'Register'
    click_on 'Paper'
    expect(page).to have_content 'Computer chose: Paper'
  end
end
