feature '@play' do

  scenario 'should able to see name' do
    sign_in_and_play
    expect(page).to have_content "Dave"
  end

  scenario 'should be able to see title' do
    sign_in_and_play
    expect(page).to have_content "Let's Play Some Awesome RPS Dave"
  end

  scenario 'should able to pick RPS' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Papper')
    expect(page).to have_button('Scissors')
  end

  scenario 'should able to see selection Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Dave picked Rock'
  end

  scenario 'should able to see selection Papper' do
    sign_in_and_play
    click_button 'Papper'
    expect(page).to have_content "Dave picked Papper"
  end

  # scenario 'should be able to see opponents pick' do
  #   allow_any_instance_of(Computer.new).to receive(:random_pick).and_return "Rock"
  #   sign_in_and_play
  #   click_button 'Papper'
  #   expect(page).to have_content "Computer picked Rock Rock"
  # end

end 
