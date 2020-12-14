
class Sampler

  def generate
    choice = ["Rock", "Paper", "Scissors"]
    Kernel.rand(choice.length)
  end

end

feature 'player receives outcome of game' do
  scenario 'player wins with Rock vs. computer Scissors' do
    allow_any_instance_of(Sampler).to receive(:generate).and_return(2)
    sign_in_and_play
    click_button("Rock")

    expect(page).not_to have_content("Are you ready!? Let's play!")
    expect(page).to have_content("...you win!")
  end
end
