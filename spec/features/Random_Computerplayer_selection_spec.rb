feature "computer player selects random object" do
  scenario 'computer now selects a random object' do
    sign_in_and_play
    click_button 'Scissors'
    # allow(Game::WEAPONS).to receive(:sample) {:Scissors}
    # expect(page).to have_content 'Computer is Scissors'
    expect(Game.new.random_selection).to satisfy {|weapon| weapon == :Rock || weapon == :Scissors || weapon == :Paper }
  end
end
