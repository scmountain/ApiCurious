class Follower
  attr_reader :name, :image

  def initialize(params)
    @name = params["login"]
    @image = params["avatar_url"]
  end

  def self.all(current_user)
    follower_hashes = GithubFollowerService.followers(current_user)
    follower_hashes.map do |follower|
      Follower.new(follower)
    end
  end
end
