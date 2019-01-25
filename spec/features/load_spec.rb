feature 'Set up game' do
  scenario 'form accepts one name' do
    visit '/'
    fill_in 'name', with: 'Lily'
    click_on 'Play'
    expect(page).to have_content 'Lily is playing'
  end
end
