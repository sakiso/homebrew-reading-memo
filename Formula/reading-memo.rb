class ReadingMemo < Formula
  desc 'CLI読書メモツール'
  homepage 'https://github.com/sakiso/homebrew-reading-memo'
  license 'MIT'
  # 現状はmacos/arm64のみ動作確認
  url 'https://github.com/sakiso/homebrew-reading-memo/releases/download/v1.0.0/reading-memo-v1.0.0-darwin-arm64.tar.gz'
  sha256 '0309b05c39d1d8cdaa150ef77dcd64ebb712f702f2ba95af3620d2a55108e2e0'
  version '1.0.0'

  def install
    bin.install 'reading-memo'
    generate_completions_from_executable(bin/"reading-memo", "''", "--generate-shell-completion")
  end
end
