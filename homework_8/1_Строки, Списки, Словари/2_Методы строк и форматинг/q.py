email = " USER@DOMAIN.COM "

email = email.strip().lower()
username, domain = email.split('@')
print(f'Username: {username}, Domain: {domain}')
