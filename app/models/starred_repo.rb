class StarredRepo
  attr_reader :name, :updated_at, :language, :html_url

  def initialize(params)
    @name = params["name"]
    @updated_at = params["updated_at"]
    @language = params["language"]
    @html_url = params["html_url"]
  end

  def self.count

  end

  def self.all(current_user)
    starred_repos_hashes = GithubStarredRepoService.starred(current_user)
    starred_repos_hashes.map do |repo|
      StarredRepo.new(repo)
    end
  end
end
