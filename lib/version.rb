class Version

  def version_path(opponent)
    if opponent == "Computer"
      return '/one_player'
    else
      return '/two_player'
    end
  end

end
