Gem::Specification.new do |s|
  s.name = 'lockboxfile'
  s.version = '0.2.0'
  s.summary = 'A Lockbox wrapper to read or write an encrypted file.'
  s.authors = ['James Robertson']
  s.files = Dir["lib/lockboxfile.rb"]
  s.add_runtime_dependency('lockbox', '~> 0.6', '>=0.6.8')
  s.add_runtime_dependency('rxfreader', '~> 0.3', '>=0.3.3')
  s.signing_key = '../privatekeys/lockboxfile.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/lockboxfile'
end
