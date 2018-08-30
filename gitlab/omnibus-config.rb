external_url 'http://kendrick/gitlab'
gitlab_rails['ldap_enabled'] = true
gitlab_rails['ldap_servers'] = YAML.load <<-'EOS'
   main: # 'main' is the GitLab 'provider ID' of this LDAP server
     label: 'LDAP'
     host: 'cinder_ldap'
     port: 389
     uid: 'cn'
     bind_dn: 'cn=admin,dc=cinder,dc=org'
     password: 'admin123'
     encryption: 'plain' # "start_tls" or "simple_tls" or "plain"
     verify_certificates: false
     active_directory: false
     allow_username_or_email_login: false
     lowercase_usernames: false
     block_auto_created_users: false
     base: 'dc=cinder,dc=org'
     user_filter: ''
EOS
