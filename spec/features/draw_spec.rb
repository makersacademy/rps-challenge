feature 'player receives outcome of game' do
  scenario 'player draws with Rock vs. computer Rock' do
    allow_any_instance_of(Sampler).to receive(:generate).and_return(0)
    sign_in_and_play
    click_button("Rock")

    expect(page).not_to have_content("Are you ready!? Let's play!")
    expect(page).to have_content("...it's a draw!")
  end
end
