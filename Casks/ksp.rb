cask 'ksp' do
  version '1.2'
  sha256 '835c07238164dc2e89b4fe81fbd74fc50ac72023e8e015d1216837f9a2608217'

  url 'http://localhost:8000/ksp-osx-1-2.zip'
  name 'Kerbal Space Program'
  homepage 'https://kerbalspaceprogram.com/'

  artifact 'KSP_osx', target: '/Applications/ksp'

  zap delete: '/Applications/ksp'
end
