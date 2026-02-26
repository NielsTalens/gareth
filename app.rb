require "sinatra"
require "json"

require_relative "lib/evaluators/strategy"
require_relative "lib/evaluators/vision"
require_relative "lib/evaluators/jtbd"
require_relative "lib/evaluators/user_flows"
require_relative "lib/evaluators/product_charter"
require_relative "lib/evaluators/feedback"
require_relative "lib/orchestrator"

get "/" do
  erb :index
end

post "/evaluate" do
  content_type :json
  feature = params["feature_proposal"].to_s
  docs = {
    strategy: File.read("product-description/01-strategy.md"),
    vision: File.read("product-description/02-product-vision.md"),
    jtbd: File.read("product-description/03-jtbd.md"),
    user_flows: File.read("product-description/04-user-flows.md"),
    product_charter: File.read("product-description/05-product-charter.md")
  }
  evaluations = [
    Evaluators::Strategy.new.call(feature, docs),
    Evaluators::Vision.new.call(feature, docs),
    Evaluators::Jtbd.new.call(feature, docs),
    Evaluators::UserFlows.new.call(feature, docs),
    Evaluators::ProductCharter.new.call(feature, docs),
    Evaluators::Feedback.new.call(feature, docs)
  ]
  summary = Orchestrator.call(evaluations)
  { summary: summary, evaluations: evaluations }.to_json
end
