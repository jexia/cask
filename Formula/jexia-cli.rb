class JexiaCli < Formula
  include Language::Python::Virtualenv
  
  desc "Official Jexia CLI tool for interacting with Jexia platform"
  homepage "https://github.com/jexia/jexia-cli"
  version "1.0.0"
  bottle :unneeded

  url "https://github.com/jexia/jexia-cli/archive/1.0.0.tar.gz"
  sha256 "932a29f7450aaba650fa63e95ac87d104e1f75a78fb0fb9e71a15f9f95aede2c"

  depends_on "python@3.8"

  def install
    venv = virtualenv_create(libexec, "python3")
    system libexec/"bin/pip", "install", "-v",
                              "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "jexia-cli"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/jexia-cli -v"
  end
end
