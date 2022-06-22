.DEFAULT_GOAL := evpn

evpn:
	ansible-playbook PLAY_evpn_deploy.yml

mpls:
	ansible-playbook PLAY_mpls_deploy.yml

goevpn:
	ansible-playbook PLAY_evpn_deploy.yml --tags deploy

gompls:
	ansible-playbook PLAY_mpls_deploy.yml --tags deploy

deploy:
	ansible-playbook PLAY_evpn_deploy.yml --tags deploy
	ansible-playbook PLAY_mpls_deploy.yml --tags deploy