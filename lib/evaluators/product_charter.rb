module Evaluators
  class ProductCharter
    def call(_feature, _docs)
      {
        "agent" => "product_description",
        "alignment_score" => 3,
        "confidence_score" => 2,
        "risk_level" => "Medium",
        "detected_conflicts" => [],
        "what_would_make_this_a_5_of_5" => ["Reinforce a core product principle."]
      }
    end
  end
end
