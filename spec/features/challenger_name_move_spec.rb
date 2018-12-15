feature 'Challenger input' do
  scenario 'challenger submits name and move' do
    visit('/')
    fill_in :challenger, with: 'Link'
    select('rock', from: 'move')
    click_button 'one, two, THREE'
    expect(page).to have_content 'Link chose rock'
  end
end
