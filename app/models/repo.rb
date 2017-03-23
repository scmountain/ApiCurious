class Repo
  attr_reader :name, :language, :updated_at, :description, :html_url

  def initialize(params)
    @name = params["name"]
    @language = params["language"]
    @updated_at = params["updated_at"]
    @description = params["description"]
    @html_url = params["html_url"]
  end

  def self.all(current_user)
    repo_hashes = GithubService.repos(current_user)
    repo_hashes.map do |repo_hash|
      Repo.new(repo_hash)
    end
  end
end
