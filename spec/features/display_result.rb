feature 'getting results' do
  scenatio 'shows winner' do
    allow_any_instance_of(Game).to receive(:give_result) { :win }    
    sign_in
    click_on('rock')
    expect(page).to have_content 'You won!'
  end

  scenario 'shows loser' do
    
  end

  scenario 'shows draw' do
    
  end
end