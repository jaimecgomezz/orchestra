require_relative 'lib/orchestra/version'

Gem::Specification.new do |spec|
  spec.name = 'orchestra'
  spec.version = Orchestra::VERSION
  spec.authors = ['jaimecgomezz']
  spec.email = ['work@jaimecgomezz.com']

  spec.summary = 'Pipeline execution'
  spec.description = 'Pipeline execution'
  spec.homepage = 'https://github.com/jaimecgomezz/orchestra'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/jaimecgomezz'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/jaimecgomezz/orchestra'
  spec.metadata['source_code_uri'] = 'https://github.com/jaimecgomezz/orchestra'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.require_paths = ['lib']

  spec.add_development_dependency 'overcommit', '~> 0.58.0'
  spec.add_development_dependency 'pry', '~> 0.14.1'
  spec.add_development_dependency 'rspec', '~> 3.11'
  spec.add_development_dependency 'rubocop', '~> 1.25'
  spec.add_development_dependency 'rubocop-performance', '~> 1.13'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.8'
  spec.add_development_dependency 'simplecov', '~> 0.21.2'
end
