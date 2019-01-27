feature 'Register' do
  scenario 'Register and see name' do
    visit '/'
    fill_in :username, with: 'Ibrahim'
    click_button 'Register'
    expect(page).to have_content 'Ibrahim Vs. NPC'
  end
end

feature 'Actions' do
  scenario 'User is presented with options' do
    visit '/'
    fill_in :username, with: 'Ibrahim'
    click_button 'Register'
    
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissor'
  end
end

