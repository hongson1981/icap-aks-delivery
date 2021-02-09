az keyvault secret set --vault-name $VAULT_NAME  --name "token-username" --value  "policy-management"

az keyvault secret set --vault-name $VAULT_NAME --name spusername --value $ARM_CLIENT_ID

az keyvault secret set --vault-name $VAULT_NAME --name sppassword --value $ARM_CLIENT_SECRET

az keyvault secret set --vault-name $VAULT_NAME --name "TF-VAR-client-id" --value $ARM_CLIENT_ID

az keyvault secret set --vault-name $VAULT_NAME  --name "TF-VAR-client-secret" --value $ARM_CLIENT_SECRET

az keyvault secret set --vault-name $VAULT_NAME  --name DH-SA-USERNAME--value $ARM_CLIENT_SECRET

az keyvault secret set --vault-name $VAULT_NAME  --name DH-SA-PASSWORD --value $ARM_CLIENT_SECRET

az keyvault secret set --vault-name $VAULT_NAME  --name SmtpUser --value $ARM_CLIENT_SECRET

az keyvault secret set --vault-name $VAULT_NAME  --name SmtpPass --value $ARM_CLIENT_SECRET

az keyvault secret set --vault-name $VAULT_NAME  --name manage-endpoint --value $ARM_CLIENT_SECRET
