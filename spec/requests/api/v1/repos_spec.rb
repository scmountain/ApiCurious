# require 'rails_helper'
#
# xdescribe GithubService do
#   attr_reader :service
#
#   before(:each) do
#     @service = GithubService.new
#   end
#   describe 'repos' do
#     it 'finds all repos' do
#       allow_any_instance_of(GithubService).to receive(:current_user).and_return(user)end
#       require "pry"; binding.pry
#       repos = @service.response
#       require "pry"; binding.pry
#       repo  = repos.first
#       expect(repos.count).to eq(28)
#       expect(repo[:first_name]).to eq('Liz')
#       expect(repo[:last_name]).to eq('Cheney')
#     end
#   end
