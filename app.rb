require "sinatra"
require "json"

require_relative "lib/evaluators/strategy"
require_relative "lib/orchestrator"

get "/" do
  erb :index
end

post "/evaluate" do
  content_type :json
  feature = params["feature_proposal"].to_s
  docs = {}
  evaluations = [Evaluators::Strategy.new.call(feature, docs)]
  summary = Orchestrator.call(evaluations)
  { summary: summary, evaluations: evaluations }.to_json
end
