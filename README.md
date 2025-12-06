# Meu script para perifericos no Linux 🖱️

Repositório com scripts utilitários para configuração rápida do meu mouse Attack Shark X11 e monitores para uso em Linux.

## Estrutura do repositório

- `MonitoresConfig/`
	- `monitoresconfig.bash` — script para aplicar configurações de monitores Acer e Samsung que utilizo (resolução, disposição, múltiplos monitores, etc.).
	- `monitorinicializacao.ini` — arquivo de configuração para inicialização do sistema para o script dos monitores.
- `MouseConfig/`
	- `mouseattacksharkx11.bash` — script para configurar opções do mouse Attack Shark x11 (sensibilidade, aceleração, mapeamento de botões).
	- `mouseinicializacao.ini` — arquivo de configuração para inicialização do sistema para meu mouse.

## Pré-requisitos

- Sistema operacional: Qualquer distruição Linux (Utilizei o ubuntu 24.0) — alguns scripts usam `xrandr` e `xinput`.
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


