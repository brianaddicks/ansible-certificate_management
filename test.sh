ansible-navigator run ./example.yml \
  --eei quay.io/rh_ee_baddicks/cert-mgmt-ee \
  --penv CLOUDFLARE_TOKEN \
  --penv PALO_API_KEY \
  -i ./test-inventory.yml --pp missing -vvvvvv #-m stdout
