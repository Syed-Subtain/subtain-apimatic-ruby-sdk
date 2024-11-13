Gem::Specification.new do |s|
  s.name = 'subtain-apimatic-sdk'
  s.version = '11.1.11'
  s.summary = 'this is short summary please ignore'
  s.description = 'This is a test package publishing, Please ignore'
  s.authors = ['Subtain']
  s.email = ['Syed.subtain@apimatic.io']
  s.homepage = 'https://apimatic.io'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.1')
  s.add_dependency('apimatic_core', '~> 0.3.9')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.4')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
