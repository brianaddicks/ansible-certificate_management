ansible-navigator run ./example.yml \
  --eei quay.io/rh_ee_baddicks/cert-mgmt-ee \
  -i ./inventory.yml --pp missing -vvv -m stdout

#   --penv MSSQL_SVC_USERNAME \
#   --penv MSSQL_SVC_PASSWORD \
#   --penv MSSQL_SVC_AGENT_USERNAME \
#   --penv MSSQL_SVC_AGENT_PASSWORD \
#   --penv ANSIBLE_PSRP_USER \
#   --penv ANSIBLE_WINRM_PASSWORD \
