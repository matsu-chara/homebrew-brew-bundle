require 'formula'

HOMEBREW_BREW_BUNDLE_VERSION = '0.1.0'
class BrewBundle < Formula
  homepage 'https://github.com/matsu-chara/homebrew-bundle'
  url 'https://github.com/matsu-chara/homebrew-bundle.git', :branch => 'master'
  version HOMEBREW_BREW_BUNDLE_VERSION
  head 'https://github.com/matsu-chara/homebrew-bundle.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'brew-bundle.rb').chmod 0755
  end
end
