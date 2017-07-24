feature 'Choose rock, paper or scissors' do
  scenario 'move prompt' do
    visit '/'
    fill_in :name, with: 'Pipes'
    click_button 'Go!'
    expect(page).to have_content "Your move: pick one."
  end

  scenario 'choose paper' do
    visit '/'
    fill_in :name, with: 'Pipes'
    click_button 'Go!'
    click_button 'Go!'
    expect(page).to have_content "You played"
  end

  scenario 'computer plays' do
    visit '/'
    fill_in :name, with: 'Pipes'
    click_button 'Go!'
    click_button 'Go!'
    expect(page).to have_content "Computer played"
  end
end
