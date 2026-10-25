# cleberalves40/tap

Fórmulas do Homebrew de [cleberalves40](https://github.com/cleberalves40).

| Fórmula | O quê |
|:---|:---|
| [octobrew-tui](https://github.com/cleberalves40/octobrew-tui) | Interface de terminal (TUI) para o Homebrew, com as abas, os atalhos e os temas do OctoPkg |
| [octobrew](https://github.com/cleberalves40/octobrew) | Interface gráfica (Qt 6) para o Homebrew, com o desenho do OctoPkg e o notificador da barra de menus |

## Instalação

```sh
brew install cleberalves40/tap/octobrew-tui   # a TUI
brew install cleberalves40/tap/octobrew       # a interface gráfica
```

No macOS, o `OctoBrew.app` fica no prefixo da fórmula; para tê-lo no Launchpad e no Finder:

```sh
ln -sf "$(brew --prefix octobrew)/OctoBrew.app" /Applications/OctoBrew.app
```

O nome completo adiciona o tap e, no brew 6+, já confia nele. Outra forma:

```sh
brew tap cleberalves40/tap
brew trust --tap cleberalves40/tap   # brew 6+
brew install octobrew-tui
```

Sem bottles por enquanto: o brew compila a partir do código, com o CMake e o Ninja (cerca
de um minuto; o OctoBrew depende do `qtbase`, que vem já compilado). Sem cask também: o
OctoBrew ainda não é assinado nem notarizado pela Apple. `brew upgrade` traz as versões novas.

## Manutenção

Cada fórmula é a mesma de `homebrew/<nome>.rb` no repositório do programa, que a valida a
cada pull request; o processo de versão está no `docs/RELEASING.md` de cada um
([octobrew-tui](https://github.com/cleberalves40/octobrew-tui/blob/main/docs/RELEASING.md),
[octobrew](https://github.com/cleberalves40/octobrew/blob/main/docs/RELEASING.md)).
O CI deste tap roda o `brew audit`, instala a partir do código e roda o `brew test` no
macOS e no Linux, a cada mudança e uma vez por semana.
