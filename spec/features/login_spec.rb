feature 'main' do
  scenario 'starts up login web page' do
    visit '/'
    expect(page).to have_content('It\'s Rock Paper Scissors!')
  end

  scenario 'lets a player enter their name' do
    visit '/'
    fill_in('player', with: 'The Obsidian Man') 
    click_button('Submit')
    expect(page).to have_content 'The Obsidian Man vs. the Computer' 
  end
end
