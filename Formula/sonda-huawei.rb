class SondaHuawei < Formula
  include Language::Python::Virtualenv

  desc "Multi-source latency and loss probe for Huawei VRP edge routers"
  homepage "https://github.com/cleberalves40/Sonda-Huawei"
  url "https://github.com/cleberalves40/Sonda-Huawei/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d80d8c07c8847636900877ff175a0e27335e42f1cff8e9f35c72828e9e9c4aab"
  license "BSD-2-Clause"
  head "https://github.com/cleberalves40/Sonda-Huawei.git", branch: "main"

  depends_on "python@3.12"

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/46/58/8c37dea7bbf769b20d58e7ace7e5edfe65b849442b00ffcdd56be88697c6/tabulate-0.10.0.tar.gz"
    sha256 "e2cfde8f79420f6deeffdeda9aaec3b6bc5abce947655d17ac662b126e48a60d"
  end

  resource "pyserial" do
    url "https://files.pythonhosted.org/packages/1e/7d/ae3f0a63f41e4d2f6cb66a5b57197850f919f59e558159a4dd3a818f5082/pyserial-3.5.tar.gz"
    sha256 "3c77e014170dfffbd816e6ffc205e9842efb10be9f58ec16d3e8675b4925cddb"
  end

  resource "textfsm" do
    url "https://files.pythonhosted.org/packages/9e/87/2a93c2ced2a11fb26cfec3623894a9127b9b67ae3cfdd1778afa5cff576f/textfsm-2.1.0.tar.gz"
    sha256 "45c18ff2b7c90163dfdff7e20d3f482514cc7aac26bc2547744e79dfa761e458"
  end

  resource "ntc-templates" do
    url "https://files.pythonhosted.org/packages/63/0f/4f1e745d5871490e86d2ae9839b51486e1389d0c25b0dbbbd3f15853bd81/ntc_templates-9.3.0.tar.gz"
    sha256 "2045d20839b5892152637b7c22893923c9a57b6c3e92771fc976f473d0fb05e3"
  end

  resource "scp" do
    url "https://files.pythonhosted.org/packages/38/c3/4d0230664b7c505ba2fa7bf9fe4bee83f6f1fa195e865ad7f92b12917e59/scp-0.16.2.tar.gz"
    sha256 "d049f9aa77db4042c44b922cecabe97ef0716fb334a95701d68d1c7991684fc2"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "paramiko" do
    url "https://files.pythonhosted.org/packages/76/cb/b1fde76618d84b1acf54d3d03d2b833ba5878afd12b9899346cc080f209d/paramiko-5.1.0.tar.gz"
    sha256 "239b5f9b2a53006cd54f83cf8495ee742083708ead947882c8dd2786de79f39b"
  end

  resource "netmiko" do
    url "https://files.pythonhosted.org/packages/68/ef/be7a36c15a8772d3cd3e7e7b289debe8c6b0f1a94a719cea75820c8d68ad/netmiko-4.8.0.tar.gz"
    sha256 "6264cf8afcbd9c10efb832bacabb9a89370452d522f6c20532d2ad0fefcbdd69"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "sonda-huawei #{version}", shell_output("#{bin}/sonda-huawei --version")
    assert_match "Sonda Huawei", shell_output("#{bin}/sonda-huawei --help")
  end
end

