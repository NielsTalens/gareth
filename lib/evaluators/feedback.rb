module Evaluators
  class Feedback
    def call(_feature, _docs)
      {
        "agent" => "feedback",
        "alignment_score" => 3,
        "confidence_score" => 2,
        "risk_level" => "Medium",
        "detected_conflicts" => [],
        "what_would_make_this_a_5_of_5" => ["Add evidence from user feedback."]
      }
    end
  end
end
