feature 'Player attack:' do
  scenario 'Player can make a choice of weapon' do
    visit '/'
    fill_in :name, with: 'Adil'
    click_button 'submit'
    click_button 'rock'
    expect(page).to have_content('Adil chose rock!')
  end
end

feature 'Computer attack:' do
  scenario 'Computer makes choice' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    visit '/'
    fill_in :name, with: 'Adil'
    click_button 'submit'
    click_button 'rock'
    expect(page).to have_content('Computer chose paper!')

  end
end
