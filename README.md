# Vim Config

Configuração personalizada do Vim para Termux e Linux, com foco em produtividade, edição de código e ferramentas de desenvolvimento.

## Recursos

- **Catppuccin Mocha** — tema.
- **Coc.nvim** — autocomplete e integração com servidores de linguagem (LSP).
- **Auto Pairs** — fechamento automático de parênteses, colchetes, chaves e aspas.
- **NERDTree** — explorador de arquivos.
- **FZF** — busca rápida de arquivos.
- **vim-easy-align** — alinhamento de texto.
- **rust.vim** — suporte a Rust.
- **vim-go** — suporte a Go.

## Requisitos

- Vim
- Git
- curl
- Node.js
- ripgrep
- fzf

## Instalação no Termux

### 1. Instalar as dependências

```bash
pkg update && pkg upgrade -y
pkg install vim git curl nodejs ripgrep fzf -y
```

### 2. Clonar o repositório

```bash
git clone https://github.com/ilzacoelhomt73-cmyk/vim-config.git
cd vim-config
```

### 3. Instalar o vim-plug

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 4. Copiar a configuração

```bash
cp .vimrc ~/.vimrc
```

Se o repositório tiver uma pasta chamada `coc`, copie também as configurações do Coc:

```bash
mkdir -p ~/.config
cp -r coc ~/.config/
```

### 5. Instalar os plugins

Abra o Vim:

```bash
vim
```

Dentro do Vim, execute:

```vim
:PlugInstall
```

Feche e abra o Vim novamente depois que a instalação terminar.

### 6. Instalar as extensões do Coc

Dentro do Vim, execute:

```vim
:CocInstall coc-rust-analyzer coc-pyright coc-clangd
```

As extensões precisam dos respectivos compiladores ou ferramentas de linguagem quando aplicável. Para C/C++, por exemplo, instale o Clang no Termux:

```bash
pkg install clang
```

## Atalhos

| Atalho | Ação |
|---|---|
| `Ctrl + N` | Abrir/fechar o NERDTree |
| `Ctrl + P` | Buscar arquivos com FZF |
| `Ctrl + F` | Buscar texto com FZF/Ripgrep |
| `gd` | Ir para a definição |
| `gr` | Mostrar referências |
| `gi` | Ir para a implementação |
| `K` | Mostrar documentação |
| `[g` | Diagnóstico anterior |
| `]g` | Próximo diagnóstico |
| `<leader>rn` | Renomear símbolo |
| `<leader>f` | Formatar código |

> O valor padrão de `<leader>` no Vim é a tecla `\`, a menos que seja alterado no `.vimrc`.

## Atualizar a configuração

Para baixar as alterações mais recentes do repositório:

```bash
cd ~/vim-config
git pull
cp .vimrc ~/.vimrc
```

Se a pasta `coc` também estiver versionada no repositório:

```bash
cp -r coc ~/.config/
```

Para atualizar os plugins, abra o Vim e execute:

```vim
:PlugUpdate
```

## Autor

**ilzacoelhomt73-cmyk**

GitHub: https://github.com/ilzacoelhomt73-cmyk

---

Feito para uso com Vim no Termux e Linux.
