require './app'

feature 'Register' do
  scenario 'Register and see name' do
    visit '/'
    fill_in :username, with: 'Ibrahim'
    click_button 'Register'
    expect(page).to have_button 'Scissor'
  end
end

feature 'Game' do
  scenario 'User is presented with options' do
    visit '/'
    fill_in :username, with: 'Ibrahim'
    click_button 'Register'
    
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissor'
  end

  scenario 'Winner is displayed' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissor')

    visit '/'
    fill_in :username, with: 'Ibrahim'
    click_button 'Register'
    click_button 'Rock'
    expect(page).to have_content 'Ibrahim won!'
  end
end
