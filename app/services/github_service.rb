class GithubService
  attr_reader :response
  def self.repos(current_user)
    @response = Faraday.get("https://api.github.com/users/#{current_user.username}/repos?client_id=#{ENV['client_id']}&client_secret=#{ENV['client_secret']}")
    JSON.parse(@response.body)
  end
end
