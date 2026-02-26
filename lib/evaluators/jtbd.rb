module Evaluators
  class Jtbd
    def call(_feature, _docs)
      {
        "agent" => "jtbd",
        "alignment_score" => 3,
        "confidence_score" => 2,
        "risk_level" => "Medium",
        "detected_conflicts" => [],
        "what_would_make_this_a_5_of_5" => ["Map to a core job outcome."]
      }
    end
  end
end
