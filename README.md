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
- `$ vagrant halt` - Pausa a máquina que está sendo utilizada
- `$ vagrant status` - Mostra o status da máquina que está sendo utilizada
- `$ vagrant global-status` - Lista todas as máquinas e em qual estado a máquina
  se encontra
- `$ vagrant destroy` - Remove a máquina que está sendo utilizada

### Dica

Em todas as aulas temos um demo para executar, é comum utilizarmos o mesmo IP
entre as aulas. Sendo assim antes de executar o demo de uma aula garanta que
tenha pausado a máquina ou removida a máquina de outra aula.

## Aulas

### Aula 1

#### Executando

- `$ cd aula-01/demo/`
- `$ vagrant up`
- Acesse http://10.0.42.10
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

### Aula 2

#### Executando

- `$ cd aula-02/demo/`
- `$ vagrant up`
- `$ ansible-playbook -i inventory playbook.yml`
- Acesse em http://10.0.42.10:8080 e http://10.0.42.11:8080
- Será exibida uma app de todo list

### Aula 3

#### Executando

- `$ cd aula-03/demo/`
- `$ vagrant up`
- `$ ansible-playbook -i inventory playbook.yml`
- Acesse em http://10.0.42.10:8080 e http://10.0.42.11:8080
- Será exibida uma app de todo list
- Experimente parar o serviço e ver o monit em ação

#### Slides

Os slides podem ser encontrados [aqui](aula-03/ansible_101_3.pdf).

