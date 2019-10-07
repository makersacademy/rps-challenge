feature 'Has two game types' do
  scenario 'Can play classic rps' do
    visit '/'
    click_button 'Play Classic'
    expect(page).to have_content 'Classic'
  end

  scenario 'Can play ls rps' do
    visit '/'
    click_button 'Play Lizard Spock'
    expect(page).to have_content 'Lizard Spock'
  end
end
