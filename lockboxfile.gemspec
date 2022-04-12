Gem::Specification.new do |s|
  s.name = 'lockboxfile'
  s.version = '0.1.0'
  s.summary = 'lockboxfile'
  s.authors = ['James Robertson']
  s.files = Dir["lib/lockboxfile.rb"]
  s.add_runtime_dependency('lockbox', '~> 0.6', '>=0.6.8')
  s.signing_key = '../privatekeys/lockboxfile.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/lockboxfile'
end
