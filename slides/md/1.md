# Ansible 101
## Introduction to Ansible and its concepts

Manuel Tiago Pereira

---

## What is Ansible?
  - A configuration management tool with batteries included
  - Simplifies infrastructure provision, configuration and orchestration

---

## What is Ansible?
  - Decentralized, agentless and (mostly) push-based
  - Uses SSH for communication
  - Declarative language
  - Human-readable YAML files

---

## Why use Ansible?
  - Simple to use and fast to learn
  - Automates tasks in no time
  - Structured, reusable and VCS-manageable infrastructure descriptions

---

## Why use Ansible?
  - Mostly idempotent
  - Great replacement for bash as "infrastructure glue" for sysadmins and alike
  - 284 modules available and 2620 roles on https://galaxy.ansible.com

---

## Basic commands
There are 2 essential commands
  - `ansible`
  - `ansible-playbook`

Note:
There are others, we'll focus on these 2.

---

## Basic commands
### `ansible`
    $ ansible -i ../inventory -m setup -a 'filter=ansible_distribution' web1
    10.0.21.2 | success >> {
        "ansible_facts": {
            "ansible_distribution": "Ubuntu"
        },
        "changed": false
    }

---

## Basic commands
### `ansible-playbook`
    $ ansible-playbook -i ../inventory playbook.yml
    PLAY [Check filter module] ****************************************************

    GATHERING FACTS ***************************************************************
    ok: [10.0.21.2]

    TASK: [Get a couple of facts from the system] *********************************
    ok: [10.0.21.2] => (item=ansible_ssh_user) => {
        "item": "ansible_ssh_user",
        "var": {
            "ansible_ssh_user": "vagrant"
        }
    }

    [...]

    PLAY RECAP ********************************************************************
    10.0.21.2                  : ok=2    changed=0    unreachable=0    failed=0

---

## Basic commands
### Notable flags

  - `--check, -C`
  - `--syntax-check`
  - `--verbose, -v[vvv]`
  - `--limit, -l`
  - `--user, -u`
  - `--list-hosts`

---

## Playbooks

  - "If Ansible modules are the tools in your workshop, playbooks are your design plans." @ http://docs.ansible.com/playbooks.html
  - An ordered plan of tasks to be executed on several sets of hosts
  - Composed of **Plays**

---

## Playbooks
### Plays

Plays describe a sequence of tasks to execute on a set of hosts and are defined by:

  - a `name`
  - `hosts` where they'll be applied
  - `remote_user` that will connect to the hosts
  - `tasks` and `roles` that will be executed

---

## Key takeaways

  - Simplifies configuring hosts in a repeatable fashion
  - It (mostly) solves idempotence
  - It's oblivious to previous states
  - Should be paired with immutable infrastructure

---

## Useful resources

  - [Official documentation](http://docs.ansible.com)
  - [Official roles repository](https://galaxy.ansible.com/)
  - [Quick reference for variables](https://github.com/lorin/ansible-quickref)


