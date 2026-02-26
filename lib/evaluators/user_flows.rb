module Evaluators
  class UserFlows
    def call(_feature, _docs)
      {
        "agent" => "user_flows",
        "alignment_score" => 3,
        "confidence_score" => 2,
        "risk_level" => "Medium",
        "detected_conflicts" => [],
        "what_would_make_this_a_5_of_5" => ["Reduce steps in a primary flow."]
      }
    end
  end
end
