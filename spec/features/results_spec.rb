feature 'Results screen' do
  scenario 'Displays win message' do
    allow_any_instance_of(Array).to receive(:sample){:scissors}
    sign_in_and_play("Paul")
    click_button("Rock")
    expect(page).to have_content("You win!")
  end

  scenario 'Displays lose message' do
    allow_any_instance_of(Array).to receive(:sample){:paper}
    sign_in_and_play("Paul")
    click_button("Rock")
    expect(page).to have_content("You lose!")
  end

  scenario 'Displays draw message' do
    allow_any_instance_of(Array).to receive(:sample){:rock}
    sign_in_and_play("Paul")
    click_button("Rock")
    expect(page).to have_content("You draw!")
  end

end
