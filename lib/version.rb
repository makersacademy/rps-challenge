class Version

  def version_path(opponent)
    return '/one_player' if opponent == "Computer"
    return '/two_player' if opponent == "Human"
  end

end
