require "harness"

use_gemfile
require "mail"

raw_email = File.binread("raw_email2.eml")

run_benchmark(10) do
  50.times do
    Mail.new(raw_email).to_s
  end
end
