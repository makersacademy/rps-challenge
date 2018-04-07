feature 'Welcome the player' do
  scenario 'Text welcoming the player should appear' do
    visit ('/')
    expect(page).to have_content("Do you want to play Rock Paper Scissors?")
  end
end

feature 'Ask the player\'s name' do
  scenario 'Form appears and can be filled in with a name' do
    visit ('/')
    expect(page).to have_field('name')
  end

  scenario 'Name can be submitted' do
    visit ('/')
    expect(page).to have_button 'Submit'
  end
end
