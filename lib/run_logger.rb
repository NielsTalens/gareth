require "json"
require "fileutils"
require "time"

class RunLogger
  OUTPUT_DIR = "projects-output".freeze

  def self.save(feature_input:, result_payload:, now: Time.now)
    FileUtils.mkdir_p(OUTPUT_DIR)
    base = "project-#{now.strftime('%Y-%m-%d-%H:%M')}"
    path = next_available_path(base)

    File.write(path, build_markdown(feature_input: feature_input, result_payload: result_payload))
    path
  end

  def self.build_markdown(feature_input:, result_payload:)
    pretty_json = JSON.pretty_generate(result_payload)

    <<~MARKDOWN
      # Feature Input

      #{feature_input}

      # Results Output

      ```json
      #{pretty_json}
      ```
    MARKDOWN
  end

  private_class_method :build_markdown

  def self.next_available_path(base)
    index = 0
    loop do
      suffix = index.zero? ? "" : "-#{index}"
      candidate = File.join(OUTPUT_DIR, "#{base}#{suffix}.md")
      return candidate unless File.exist?(candidate)

      index += 1
    end
  end

  private_class_method :next_available_path
end
