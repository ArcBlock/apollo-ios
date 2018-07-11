Pod::Spec.new do |s|
  s.name         = 'Apollo'
  s.version      = `scripts/get-version.sh`
  s.author       = 'Meteor Development Group'
  s.homepage     = 'https://github.com/apollographql/apollo-ios'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.summary      = "A GraphQL client for iOS, written in Swift."

  s.source       = { :git => 'https://github.com/apollographql/apollo-ios.git', :tag => s.version }

  s.requires_arc = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.1'
  s.watchos.deployment_target = '3.0'

  s.source_files = 'Sources/Apollo/*.swift'
  s.resource = 'scripts/check-and-run-apollo-cli.sh'

end
