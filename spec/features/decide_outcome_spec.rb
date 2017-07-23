feature 'deciding the overall winner' do
  scenario 'the player wins overall' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    5.times{ choose_rock }
    expect(page).to have_content "50 POINTS!! YOU ARE THE WINNER!!!"
  end

  scenario 'the player loses overall' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    5.times{ choose_rock }
    expect(page).to have_content "BOO HOO! You have lost, try harder next time"
  end
end
