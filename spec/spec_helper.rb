require_relative '../lib/prime_table'
require_relative '../lib/command'
require 'stringio'

def capture_stdout
  old = $stdout
  $stdout = fake = StringIO.new
  yield
  fake.string
ensure
  $stdout = old
end
