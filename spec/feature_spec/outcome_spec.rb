feature 'outcome' do
  scenario 'player 1 wins' do
    sign_in_with_name
    allow_any_instance_of(Array).to receive(:sample){'Scissors'}
    page.choose('Rock1')
    click_button 'Submit'
    expect(page).to have_content('VICTORY')
  end

  scenario 'player 2 wins' do
    sign_in_with_name
    allow_any_instance_of(Array).to receive(:sample){'Paper'}
    page.choose('Rock1')
    click_button 'Submit'
    expect(page).to have_content('LOSER')
  end

  scenario 'a draw' do
    sign_in_with_name
    allow_any_instance_of(Array).to receive(:sample){'Rock'}
    page.choose('Rock1')
    click_button 'Submit'
    expect(page).to have_content('TRY AGAIN')
  end
end
