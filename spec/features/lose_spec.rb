feature 'player receives outcome of game' do
  scenario 'player loses with Rock vs. computer Paper' do
    allow_any_instance_of(Sampler).to receive(:generate).and_return(1)
    sign_in_and_play
    click_button("Rock")

    expect(page).not_to have_content("Are you ready!? Let's play!")
    expect(page).to have_content("...you lose!")
  end
end
