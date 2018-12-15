feature 'Loss' do
  scenario 'challenger move results in loss' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    visit('/')
    fill_in :challenger, with: 'Link'
    select('rock', from: 'move')
    click_button 'one, two, THREE'
    expect(page).to have_content "Link chose rock Computer chose paper paper beats rock, Link defeated!"
  end
end
