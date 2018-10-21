require_relative '../spec_helper.rb'

feature "testing the infrastructure" do
  let(:player) {double(:player, name: "Jeff")}
  # let(:game) {Game.new(player)}
  scenario "Name can be entered before playing" do
    sign_in_and_play(player.name)
    expect(page).to have_content player.name
  end
end
