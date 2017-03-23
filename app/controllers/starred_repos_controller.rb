class StarredReposController < ApplicationController
  def index
    @starred_repos = StarredRepo.all(current_user)
  end
end
