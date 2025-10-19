cask "alacritty-graphics" do
  version "0.16.0"
  sha256 "325fe7aaf6930405526c27030b7124c916253b97eaaa7477aa35e1e6e42cd477"

  url "https://github.com/ayosec/alacritty/releases/download/v#{version}-graphics/Alacritty-v#{version}-graphics.dmg"
  name "Alacritty"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/ayosec/alacritty/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  conflicts_with cask: "alacritty"

  app "Alacritty.app"
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty-direct",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty-direct"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty.1.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty.5.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty-msg.1.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty-bindings.5.gz"
  bash_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.bash"
  fish_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.fish"
  zsh_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/_alacritty"

  zap trash: [
    "~/Library/Preferences/org.alacritty.plist",
    "~/Library/Saved Application State/org.alacritty.savedState",
  ]
end
