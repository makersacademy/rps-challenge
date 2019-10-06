feature 'Setting up game' do
  scenario "When I submit my name the game greets me using it" do
    sign_in_single
    expect(page).to have_content "James vs"
  end
end
