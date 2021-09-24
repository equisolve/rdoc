lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rdoc'

Gem::Specification.new do |spec|
  spec.name = 'rdoc'
  spec.version = RDoc::VERSION
  spec.summary = 'RDoc is a Ruby documentation system which contains RDoc::RDoc for generating documentation, RDoc::RI for interactive documentation and RDoc::Markup for text markup.'
  spec.homepage = 'https://github.com/equisolve/rdoc'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.2.10')

  spec.metadata['allowed_push_host'] = 'https://gems.equisolve.com'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/equisolve/eqget'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ['lib']
end
