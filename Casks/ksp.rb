cask 'ksp' do
  version '1.2.2'
  sha256 '5111d7d44c62f8cf6ce5099902452ca514d884972ff3256815dfe3625e5f0acb'

  url 'http://localhost:8000/ksp-osx-1-2-2.zip'
  name 'Kerbal Space Program'
  homepage 'https://kerbalspaceprogram.com/'

  artifact 'KSP_osx', target: '/Applications/ksp'

  zap delete: '/Applications/ksp'
end
