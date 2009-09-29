require 'gherkin'
require '../spec/gherkin/sexp_recorder'
a = Gherkin::SexpRecorder.new
b = Gherkin::Feature.new('C', a)
b.scan("# Comment\nFeature: A feature\nwith a few lines\n Scenario: A scenario\n is better\n than no scenario at all\nScenario Outline: this is a scenario outline\n but the steps after it do not work\n neither do backgrounds or examples\n who knows why\n   Given a step\nAnd another step\nScenario: Another scenario")
puts a.to_sexp
