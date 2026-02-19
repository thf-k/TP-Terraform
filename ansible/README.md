# TP - Déploiement WordPress avec Ansible

## Objectif
Installer automatiquement WordPress sur une VM Ubuntu via Ansible.

## Prérequis
- VM Vagrant vm1 en cours d'exécution
- Ansible installé dans WSL

## Test de connexion
ansible -i ansible/inventory.ini -m ping wordpress

## Lancer le déploiement
ansible-playbook -i ansible/inventory.ini ansible/playbooks/wordpress.yml

## Accès
http://192.168.56.10
