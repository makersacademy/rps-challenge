feature 'getting results' do
  scenario 'shows winner' do
    allow_any_instance_of(Game).to receive(:give_result) { :win }    
    sign_in
    click_on('rock')
    expect(page).to have_content 'You won!'
  end

  scenario 'shows loser' do
    allow_any_instance_of(Game).to receive(:give_result) { :loss }
    sign_in
    click_on('scissors')
    expect(page).to have_content 'You lost.'
  end

  scenario 'shows draw' do
    allow_any_instance_of(Game).to receive(:give_result) { :draw }    
    sign_in
    click_on('rock')
    expect(page).to have_content 'You drew.'
  end
end