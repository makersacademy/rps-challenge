feature 'selecting rock, paper or scissors' do
  scenario "should show Player 1's pick" do
    sign_in_and_play
    submit_paper
    expect(page).to have_content 'Laurence picked rock.'
  end

  scenario "should show Player 2's pick" do
    sign_in_and_play
    submit_paper
    expect(page).to have_content 'Bob picked paper.'
  end
end

feature 'Player 1 losing' do
  scenario 'should display a message saying Player 2 wins' do
    sign_in_and_play
    submit_paper
    expect(page).to have_content 'Bob wins!'
  end
end

feature 'Player 1 winning' do
  scenario 'should display a message saying Player 1 wins' do
    sign_in_and_play
    submit_scissors
    expect(page).to have_content 'Laurence wins!'
  end
end

feature 'drawing' do
  scenario "should display a message saying it's a draw" do
    sign_in_and_play
    submit_rock
    expect(page).to have_content "It's a draw!"
  end
end
