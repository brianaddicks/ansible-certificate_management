ansible-navigator run ./example.yml \
  --eei quay.io/rh_ee_baddicks/cert-mgmt-ee \
  --penv CLOUDFLARE_TOKEN \
  --penv PALO_API_KEY \
  --penv ANSIBLE_SSH_USERNAME \
  -i ./test-inventory.yml --pp missing #-m stdout
