feature 'choices' do
  scenario 'shows the choice selected' do
    fillin_and_submit
    click_button('Rock')
    expect(page).to have_content('you chose Rock')
  end
  xscenario 'shows the choice of coputer' do
    fillin_and_submit
    allow_any_instance_of(Player).to receive(:sample)
    allow_any_instance_of(Player).to receive(:choices).and_return("Scissors")
    click_button('Rock')
    expect(page).to have_content('Computer chose Scissors')
  end
  scenario 'takes back to play for' do
    fillin_and_submit
    click_button('Rock')
    click_button('Play again')
    expect(page).to have_content('Welcome abdur')
  end
  scenario 'displays the winner' do
    fillin_and_submit
    click_button('Rock')
    expect(page).to have_content('abdur wins!')
  end
  scenario 'displays a tie' do
    fillin_and_submit
    allow_any_instance_of(Player).to receive(:weapon).and_return('Rock')
    click_button('Rock')
    expect(page).to have_content('it\'s a tie')
  end  
end