if ENV['CIRCLE_ARTIFACTS']
  dir = File.join(ENV['CIRCLE_ARTIFACTS'], "coverage")
  SimpleCov.coverage_dir(dir)
  SimpleCov.start
  SimpleCov.at_exit do
    SimpleCov.minimum_coverage 90
    SimpleCov.maximum_coverage_drop 5
  end
else
  SimpleCov.start
  SimpleCov.at_exit do
    SimpleCov.minimum_coverage 90
    SimpleCov.maximum_coverage_drop 5
  end
end
