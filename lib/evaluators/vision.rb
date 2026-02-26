module Evaluators
  class Vision
    def call(_feature, _docs)
      {
        "agent" => "vision",
        "alignment_score" => 3,
        "confidence_score" => 2,
        "risk_level" => "Medium",
        "detected_conflicts" => [],
        "what_would_make_this_a_5_of_5" => ["Tie to a vision need or goal."]
      }
    end
  end
end
