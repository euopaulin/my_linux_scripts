# my_linux_scripts

Repositório com scripts utilitários para configuração rápida em sistemas Linux (foco em configuração de monitores e mouse).

## Estrutura do repositório

- `MonitoresConfig/`
	- `monitoresconfig.bash` — script para aplicar configurações de monitores (resolução, disposição, múltiplos monitores, etc.).
	- `monitorinicializacao.ini` — arquivo de configuração lido pelo script de monitores.
- `MouseConfig/`
	- `mouseattacksharkx11.bash` — script para configurar opções do mouse (sensibilidade, aceleração, mapeamento de botões) em X11.
	- `mouseinicializacao.ini` — arquivo de configuração lido pelo script do mouse.

## Pré-requisitos

- Sistema operacional: Linux (X11) — alguns scripts usam `xrandr` e `xinput`.
- Shell: `bash`.
- Utilitários: `xrandr`, `xinput` (instale via gerenciador de pacotes da sua distro).

Exemplo (Debian/Ubuntu):

```
sudo apt update; sudo apt install x11-xserver-utils xinput
```

## Uso

1. Dê permissão de execução aos scripts (uma vez):

```
chmod +x MonitoresConfig/monitoresconfig.bash
chmod +x MouseConfig/mouseattacksharkx11.bash
```

2. Execute o script desejado (recomendado revisar o conteúdo antes de executar):

```
./MonitoresConfig/monitoresconfig.bash
# ou
./MouseConfig/mouseattacksharkx11.bash
```

Se algum script requerer privilégios, prefira inspecionar o script e executá-lo com `sudo` apenas quando necessário.

### Arquivos `.ini`

Os arquivos `monitorinicializacao.ini` e `mouseinicializacao.ini` contêm parâmetros de configuração usados pelos scripts. Edite-os conforme suas necessidades antes de rodar os scripts.

## Adicionar à inicialização

Para aplicar configurações automaticamente ao iniciar sessão, você pode:

- Adicionar uma entrada em `~/.profile` ou `~/.xprofile` que execute os scripts.
- Criar um arquivo `.desktop` em `~/.config/autostart/` que execute o script na inicialização da sessão.

Exemplo rápido — adicionar ao `~/.xprofile`:

```
# no final de ~/.xprofile
bash /caminho/para/o/repositorio/MonitoresConfig/monitoresconfig.bash &
bash /caminho/para/o/repositorio/MouseConfig/mouseattacksharkx11.bash &
```

## Segurança e boas práticas

- Sempre revise os scripts antes de executá-los, especialmente quando exigem `sudo`.
- Faça backup das configurações atuais do sistema (por exemplo, configurações de X) caso precise restaurar.

## Contribuições

Pull requests são bem-vindos. Para contribuir:

1. Fork este repositório.
2. Crie uma branch com sua alteração.
3. Envie um pull request descrevendo a mudança.

## Licença

Adicione aqui a licença desejada (por exemplo, MIT) ou mantenha como uso pessoal.

---

Se quiser, eu posso também:

- Gerar um arquivo `LICENSE` com a licença MIT.
- Adicionar exemplos mais detalhados no `MonitoresConfig/monitoresconfig.bash` e documentar opções de `monitorinicializacao.ini`.
