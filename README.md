# Curso Ansible 101

## Instalação

```
$ ./setup.sh
```

## Vagrant

O vagrant é utilizado para subirmos máquinas locais e podermos testar o Ansible
localmente.

### Comandos úteis

- `$ vagrant up` - Inicia uma máquina utilizando o Vagrantfile
- `$ vagrant halt` - Para a máquina que está sendo utilizada
- `$ vagrant status` - Mostra o status da máquina que está sendo utilizada
- `$ vagrant global-status` - Lista todas as máquinas e em qual estado a máquina
  se encontra
- `$ vagrant destroy` - Remove a máquina que está sendo utilizada

## Aulas

### Aula 1

#### Executando

- `$ cd aula-01/demo/`
- `$ vagrant up`
- Acesse 10.0.42.10
- Será exibida uma página de hello world

#### Video

O vídeo da primeira aula pode ser encontrado
[aqui](https://helabs.wistia.com/medias/snauei2mfs).

#### Slides

Os slides podem ser encontrados [aqui](aula-01/ansible-101_1.pdf).

#### Links úteis referidos na aula

- http://docs.ansible.com/
- https://galaxy.ansible.com/
- https://github.com/lorin/ansible-quickref
