cask "alacritty-graphics" do
  version "0.15.1"
  sha256 "5c3b87aba9626776c7faa28e77d95ddd434d0d9e648be1cf5fc8dda834a28964"

  url "https://github.com/ayosec/alacritty/releases/download/v#{version}-graphics/Alacritty-v#{version}-graphics.dmg"
  name "Alacritty"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/ayosec/alacritty/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "alacritty"

  app "Alacritty.app"
  binary "Alacritty.app/Contents/MacOS/alacritty"
  binary "Alacritty.app/Contents/Resources/completions/_alacritty",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_alacritty"
  binary "Alacritty.app/Contents/Resources/completions/alacritty.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/alacritty"
  binary "Alacritty.app/Contents/Resources/completions/alacritty.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/alacritty.fish"
  binary "Alacritty.app/Contents/Resources/61/alacritty",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty"
  binary "Alacritty.app/Contents/Resources/61/alacritty-direct",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty-direct"
  manpage "Alacritty.app/Contents/Resources/alacritty.1.gz"
  manpage "Alacritty.app/Contents/Resources/alacritty.5.gz"
  manpage "Alacritty.app/Contents/Resources/alacritty-msg.1.gz"
  manpage "Alacritty.app/Contents/Resources/alacritty-bindings.5.gz"

  zap trash: [
    "~/Library/Preferences/org.alacritty.plist",
    "~/Library/Saved Application State/org.alacritty.savedState",
  ]
end
