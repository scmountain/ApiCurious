class GithubFollowerService

  def self.followers(current_user)
    response = Faraday.get("https://api.github.com/users/#{current_user.username}/followers?client_id=#{ENV['client_id']}client_secret=#{ENV['client_secret']}")
    JSON.parse(response.body)
  end
end
