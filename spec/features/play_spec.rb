feature "Displays choices" do

  before do
    allow_any_instance_of(Computer).to receive(:draw).and_return 'rock'
  end

  scenario "shows computer choice" do
    visit '/play'
    expect(page).to have_content('rock')
  end
end
# 
# feature "Displays winner" do
#   scenario "shows name of winning player" do
#     visit '/play'
#     expect(page).to have_content("Computer wins!")
#   end
# end
