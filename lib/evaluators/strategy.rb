module Evaluators
  class Strategy
    def call(_feature, _docs)
      {
        "agent" => "strategy",
        "alignment_score" => 3,
        "confidence_score" => 2,
        "risk_level" => "Medium",
        "detected_conflicts" => [],
        "what_would_make_this_a_5_of_5" => ["Cite a specific strategic pillar."]
      }
    end
  end
end
