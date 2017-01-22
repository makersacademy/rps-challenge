feature "FEATURE: Message log" do

  scenario "Enter game message" do
    play_two_player
    expect("#message_log_wrapper").to have_text("Beast and Magneto entered the game!")
  end

end
