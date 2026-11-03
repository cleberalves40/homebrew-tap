# cleberalves40/tap

[Português](README.md) | **English**

Homebrew formulas maintained by [cleberalves40](https://github.com/cleberalves40).

| Formula | Description |
|:---|:---|
| [octobrew-tui](https://github.com/cleberalves40/octobrew-tui) | Terminal interface (TUI) for Homebrew, with OctoPkg tabs, shortcuts, and themes |
| [octobrew](https://github.com/cleberalves40/octobrew) | Qt 6 graphical interface for Homebrew, with OctoPkg styling and a menu bar notifier |
| [sonda-huawei](https://github.com/cleberalves40/Sonda-Huawei) | Multi-source latency and packet-loss CLI probe for Huawei VRP edge routers |

## Installation

```sh
brew install cleberalves40/tap/octobrew-tui   # terminal interface
brew install cleberalves40/tap/octobrew       # graphical interface
brew install cleberalves40/tap/sonda-huawei   # Huawei VRP latency probe
```

On macOS, `OctoBrew.app` is installed in the formula prefix. To make it available in Launchpad and Finder:

```sh
ln -sf "$(brew --prefix octobrew)/OctoBrew.app" /Applications/OctoBrew.app
```

The fully qualified formula name adds the tap and, with brew 6+, trusts it automatically. Alternatively:

```sh
brew tap cleberalves40/tap
brew trust --tap cleberalves40/tap   # brew 6+
brew install sonda-huawei
```

Bottles are not available yet: brew installs from source or tap recipes. `brew upgrade` installs new versions.

## Maintenance

Each formula matches `homebrew/<name>.rb` or the corresponding software repository, where it is validated on every pull request. This tap's CI runs `brew audit`, installs and runs `brew test` on macOS and Linux for every change and weekly.
