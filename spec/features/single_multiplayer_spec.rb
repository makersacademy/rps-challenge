feature 'Choose between multi and single player' do
  scenario 'Enter names in multiplayer' do
    visit '/'
    click_on 'Two player'
    expect(page).to have_content('Please give both your names')
  end

  scenario 'Enter name in single player' do
    visit '/'
    click_on 'One player'
    expect(page).to have_content('Please enter your name:')
  end
end
