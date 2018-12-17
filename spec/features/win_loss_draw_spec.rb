feature 'Loss' do
  scenario 'challenger move results in loss' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    visit('/')
    fill_in :challenger, with: 'Link'
    select('rock', from: 'move')
    click_button 'one, two, THREE'
    expect(page).to have_content "Computer wins!"
  end
end

feature 'Win' do
  scenario 'challenger move results in win' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    sign_in_and_select_move
    expect(page).to have_content "Challenger wins!"
  end
end

feature 'Draw' do
  scenario 'challenger move results in draw' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    sign_in_and_select_move
    expect(page).to have_content "Draw!"
  end
end
