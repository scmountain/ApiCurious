class StarredRepo
  attr_reader :name, :updated_at, :language
  
  def initialized(params)
    @name = params["name"]
    @updated_at = params["updated_at"]
    @language = params["language"]
  end

  def self.count

  end

  def self.all(current_user)
    starred_repos_hashes = GithubStarredRepoService.starred(current_user)
  end
end
