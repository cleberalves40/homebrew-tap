# cleberalves40/tap

[**Português**](README.md) | [English](README.en.md)

Fórmulas do Homebrew de [cleberalves40](https://github.com/cleberalves40).

| Fórmula | O quê |
|:---|:---|
| [octobrew-tui](https://github.com/cleberalves40/octobrew-tui) | Interface de terminal (TUI) para o Homebrew, com as abas, os atalhos e os temas do OctoPkg |
| [octobrew](https://github.com/cleberalves40/octobrew) | Interface gráfica (Qt 6) para o Homebrew, com o desenho do OctoPkg e o notificador da barra de menus |
| [sonda-huawei](https://github.com/cleberalves40/Sonda-Huawei) | Sonda CLI de latência e perda de pacotes multi-origem para roteadores de borda Huawei VRP |

## Instalação

```sh
brew install cleberalves40/tap/octobrew-tui   # a TUI
brew install cleberalves40/tap/octobrew       # a interface gráfica
brew install cleberalves40/tap/sonda-huawei   # sonda de latência Huawei VRP
```

No macOS, o `OctoBrew.app` fica no prefixo da fórmula; para tê-lo no Launchpad e no Finder:

```sh
ln -sf "$(brew --prefix octobrew)/OctoBrew.app" /Applications/OctoBrew.app
```

O nome completo adiciona o tap e, no brew 6+, já confia nele. Outra forma:

```sh
brew tap cleberalves40/tap
brew trust --tap cleberalves40/tap   # brew 6+
brew install sonda-huawei
```

Sem bottles por enquanto: o brew instala a partir do código fonte ou receitas do tap. `brew upgrade` traz as versões novas.

## Manutenção

Cada fórmula é a mesma de `homebrew/<nome>.rb` ou do repositório correspondente do programa, que a valida a cada pull request.
O CI deste tap roda o `brew audit`, instala e roda o `brew test` no macOS e no Linux a cada mudança e semanalmente.
