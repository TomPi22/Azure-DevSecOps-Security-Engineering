import os
from azure.identity import DefaultAzureCredential
from azure.keyvault.secrets import SecretClient
from azure.core.exceptions import ResourceNotFoundError

# A URL exata do seu cofre na Azure
KEY_VAULT_URL = "https://kv-secops-20261199.vault.azure.net/"
SECRET_NAME = "admin-db-password"

def get_secret_from_vault():
    print(f"🕵️ Iniciando operação furtiva no Key Vault: {KEY_VAULT_URL}...")

    try:
        # A Mágica do DevSecOps: Autenticação sem senha (usa o token do az login)
        credential = DefaultAzureCredential()
        client = SecretClient(vault_url=KEY_VAULT_URL, credential=credential)

        print(f"🔐 Autenticação Azure AD bem-sucedida! A extrair o segredo '{SECRET_NAME}'...")
        retrieved_secret = client.get_secret(SECRET_NAME)

        print("\n✅ SUCESSO ABSOLUTO (AUTOMATIZAÇÃO DE SEGREDOS)!")
        print(f"A password extraída do cofre é: {retrieved_secret.value}")
        print("-> Nota de Engenharia: Em produção, este valor iria direto para o banco de dados e nunca seria impresso no ecrã.")

    except ResourceNotFoundError:
        print(f"\n❌ Erro: O segredo '{SECRET_NAME}' não foi encontrado no cofre.")
    except Exception as e:
        print(f"\n❌ Erro crítico de automação: {e}")

if __name__ == "__main__":
    get_secret_from_vault()
