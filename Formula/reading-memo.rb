class ReadingMemo < Formula
  desc 'CLI読書メモツール'
  homepage 'https://github.com/sakiso/homebrew-reading-memo'
  license 'MIT'
  # 現状はmacos/arm64のみ動作確認
  url 'https://github.com/sakiso/homebrew-reading-memo/releases/download/v1.0.0/reading-memo-v1.0.0-darwin-arm64.tar.gz'
  sha256 '56597064cd04b3367e9e8a39d592eb6140af4b9a07a05ad51dd3d69fdb560ad5'
  version '1.0.0'

  def install
    bin.install 'reading-memo'
    generate_completions_from_executable(bin/"reading-memo", "completion")
  end
end
